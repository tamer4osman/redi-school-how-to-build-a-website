# Example 2: Jekyll

### Brief

This example will run inside docker as a `jekyll serve` project. Which will allow you to edit the source
and save instantly updating the website which is running.

### Running the Project

Execute this command:
```shell script
docker-compose up
```

It will take a minute or so to start the first time. As long as you don't make changes to the base image
then each subsequent execution should be faster as it caches the information. But the first time it
needs to setup everything.

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
