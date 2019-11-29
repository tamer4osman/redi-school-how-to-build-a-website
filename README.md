# RedI School Workshop: How to build a website

To present a workshop to the ReDI School. I wrote this repository with examples so I could demonstrate
how to use Docker to host the files I am working with in a realistic development environment. 

Afterwards, I explain how to take the basic HTML template I started with and brought it into a Jekyll
project and used it's templating system to break up the static HTML into a more dynamic system of parts
that I can assemble in order to make it easier to develop in the future.

The last part was about how to host that Jekyll website on github directly. So you don't have to
host your own website on your own server when developing your GitHub projects.
 
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
