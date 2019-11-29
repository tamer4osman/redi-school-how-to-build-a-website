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

### To initialise the project:

When I started this project, the only files inside the folder were:
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
