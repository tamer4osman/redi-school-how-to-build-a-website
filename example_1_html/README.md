# Example 1: HTML

### Introduction:

This example will run inside docker as an `nginx` project. Which will allow you to edit the source
and save instantly updating the website which is running.

The project is a simple HTML5 template which has been copied into the project and shows how you
can quickly build a website in a realistic development environment without resorting to hacks
or tricks to get things working.

### Running the Project:

Execute this command:
```shell script
docker-compose up
```

Because this is a static HTML project, it will very quickly download nginx docker image and run it.

### To access the project:

The `docker-compose` command will run the project and if you look at `docker ps` you will see the project
running. It will show you the port mappings and it's these ports which can be used on `localhost` 
in order to access the project and start editing things.

On my machine, running `docker ps` output this

```shell script
CONTAINER ID        IMAGE                            COMMAND                  CREATED             STATUS              PORTS                                                NAMES
35cebf7a97a2        example_2_jekyll_jekyll          "/usr/jekyll/bin/ent…"   4 minutes ago       Up 4 minutes        80/tcp, 443/tcp, 35729/tcp, 0.0.0.0:8081->4000/tcp   example_2_jekyll_jekyll_1
d1de01b4889e        example_1_html_nginx             "nginx -g 'daemon of…"   4 minutes ago       Up 4 minutes        443/tcp, 0.0.0.0:8080->80/tcp                        example_1_html_nginx_1
6d135d2c7290        christhomas/nginx-proxy:alpine   "/app/docker-entrypo…"   25 minutes ago      Up 25 minutes       0.0.0.0:80->80/tcp, 0.0.0.0:443->443/tcp             redi_frontend_proxy
```

You can see the ports column is filled with various entries. The interesting one is `0.0.0.0:8080->80/tcp`.
This means that your computer has opened port 8080 and is mapping it to the docker port 80 internally. 
The left hand side is always your machine, the right hand side refers to dockers configuration.

Open your browser to [http://localhost/8080](http://localhost/8080) and the website should appear.

### Create a 'custom domain' for local development

Even better than just accessing over `localhost`, is to edit the file:

- Windows: `c:\Windows\System32\Drivers\etc\hosts`
- MacOs/Linux: `/etc/hosts`

Add an entry like this:
```shell script
127.0.0.1 redi-school-html.develop
````

Then you can open the browser to [http://redi-school-html.develop](http://redi-school-html.develop)

You'll notice you don't need to put any port this time after the url. This is because the frontend-proxy
is handling everything through port 80, which browsers automatically use if you don't specify a port.

This 'auto-connection' is magically done by the frontend proxy in combination with environment variables
of the container, which lets the frontend proxy know which ports it should map internally.

```shell script
    environment:
      - VIRTUAL_HOST=redi-school-jekyll.develop
      - VIRTUAL_PORT=4000
```

This will tell the frontend proxy the hostname to recognise and the port it should be mapping to. 
It will route your request from your browser to the container and handle the configuration for you

### To initialise the project:

This being a pre-built project, it already has everything it needed in order to run. But lets assume you want to 
build a new project from scratch. When I started this project, the only files inside the folder were:
```
- docker-compose.yml
- Dockerfile
- README.md
```

Then I found a HTML template and copied all the files into it and that was all I needed to do. Our 
workshop will show how you can quickly do this yourself and use online resources in order to create 
something very useful, very quickly.

However in a real world scenario, you wouldn't just copy a template from the web, but you'd create your 
own website. We are only copying a template because we have limited time and to do your own website from 
scratch would require a significant amount of work that could run into days or weeks. 

However, I hope that by showing you this contrived example. I can demonstrate to you the underlying technology 
you need to use when you finally make that website of your own. There is no difference in reality between our 
example in this workshop and a real website project. Only the HTML used, designed, and created.

#### Exercise for the adventurous

Why don't you find your own HTML template and replace the files here with your own? Or if you have an 
existing HTML project, you could copy those files and really do something personal for yourself. 
