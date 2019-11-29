# Example 2: Jekyll

### Introduction:

This example will run inside docker as a `jekyll serve` project. Which will allow you to edit the source
and save instantly updating the website which is running.

The project is a simple HTML5 template which has been copied into a Jekyll project and using it's 
templating system, broken up into parts and will serve as a way to explain how a flat HTML project 
consisting of multiple pages can be integrated with the system.

### Running the Project:

Execute this command:
```shell script
docker-compose up
```

It will take a minute or so to start the first time. As long as you don't make changes to the base image
then each subsequent execution should be faster as it caches the information. But the first time it
needs to setup everything.

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
127.0.0.1 redi-school-jekyll.develop
````

Then you can open the browser to [http://redi-school-jekyll.develop](http://redi-school-jekyll.develop)

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

When I started this project, the only files inside the folder were:
```
- docker-compose.yml
- Dockerfile
- README.md
```

To initialise an empty jekyll project, with just these three files, I had to run:
```shell script
docker-compose run jekyll jekyll new /srv/jekyll --force
```
This command will take a few minutes to run whilst it installs everything. Don't worry. It's still
working. It took around 4 minutes on my machine the first time.

This will create the scaffolding for jekyll to run correctly. Obviously I have run this command
already and committed it to the repository because I wanted a complete-ready-to-run project.

#### Exercise for the adventurous

Why don't you create a new directory, copy ONLY the files mentioned above into that directory. Then
run the command given. Then you can follow the instructions in the `Running the Project` section
in order to know how to serve and view the bare site. Why don't you try adding HTML to it and experiment.
