# RedI School Workshop: How to build a website

My name is [Chris Thomas](https://github.com/christhomas) and I'm a Senior Software Engineer at plista.
I've been developing software in various forms for around 20 years and I'm going to present a 
workshop to the ReDI School. I wrote this repository with examples so I could demonstrate how 
to use Docker to host the files I am working with in a realistic development environment. 

Afterwards, I explain how to take the basic HTML template I started with and brought it into a Jekyll
project and used it's templating system to break up the static HTML into a more dynamic system of parts
that I can assemble in order to make it easier to develop in the future.

The last part was about how to host that Jekyll website on github directly. So you don't have to
host your own website on your own server when developing your GitHub projects.

### Inspiration

Developers when starting on their path to becoming a professional will often encounter various ways
to 'get started' and some of those ways are better than others. After my experiences on my own journey
I realised I could help others to use a 'better way' of starting and teach tools which really help
to reduce the amount of administrative effort needed to get a new website started.

I am sure that in the past you have heard about XAMPP, WAMP, MAMP, etc. Those tools are nice. But they
require modifying your machine in order to get them to run. You need to install, configure each site
and if you need to run multiple websites side by side then even more effort is required to configure
your machine and the software to 'know' about this setup.

What if you could setup a new website by merely downloading a GIT repository and then running it
in isolation? You don't need to modify your machine, you can download the instructions to run the website
alongside the code for the website itself.

That's what docker is very good at. You can commit the code to your website, along with the instructions
the computer will use to run the website itself. You don't need to configure your machine specifically
and the biggest benefit is that you can share those changes with your friends over GitHub. 

Sometimes you need a website to go alongside your GitHub project. In these situations, it's very handy to know
that GitHub can also host your website. You can even use a custom domain if you buy one to 'point at' the 
repository. Although this is a more complex scenario that I can explain afterwards.

See here for custom domains: https://help.github.com/en/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site
 
### Contents
- `example_1_html`: A simple html website, we use docker to run nginx in order to host it
- `example_2_jekyll`: A Jekyll templated version of the first example.
- `run-proxy.sh`: A script to run a frontend-proxy
- `stop-proxy.sh`: A script to stop the frontend-proxy once we are done with it

### Getting Started

Each example runs independent of the other. There are `README.md` files in each example folder which
explain the details of each example.

You need to have [Docker](https://docker.com) installed in order to run these examples. It is preferrable if you're 
using Linux or MacOs. Windows users will have to run the frontend proxy scripts manually but 
that should be easy enough since they are just a couple of commands.

### Special Thanks

To [Plista](https://plista.com) for letting me do the workshop and to the 
[ReDI School](https://www.redi-school.org/berlin) for bringing the Students. I hope you learned 
something interesting! I'll try to make some jokes ;)
