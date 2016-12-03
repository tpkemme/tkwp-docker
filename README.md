# tkwP-docker

This local development environment for Wordpress using Docker and a custom bash script to update the hosts file.  The script takes
the name of the repo directory (in this case 'tkwp-docker') and maps the project specific port (set manually in dockup.sh) to an 
appropriately named dev url.  So if you clone this repo into a folder named "tylerisawesome" and set the port in dockup.sh to a unique
number, you will see a new Wordpress install at "tylerisawesome.com" after running `sh dockup.sh`.

# Prereqs

Before you can use 'dockup' a local wordpress installation, you need to install [Docker](https://www.docker.com/) and 
[Docker Compose](https://www.docker.com/products/docker-compose).  Not so bad right?

# Docker images included in this environment

-   Wordpress 
-   PHP
-   MariaDB
-   NGINX
-   PhpMyAdmin
-   MailHog

# dockup: Turn the site on

1. Clone TVV:  
  `git clone https://github.com/tpkemme/tkwp-docker.git your-new-site`
2. Navigate to clone directory:  
  `cd your-new-site`
3. Start your-new-site.dev:  
  `sh dockup.sh`

That's it!  After that runs you go to http://your-new-site.dev and you'll see the typical Wordpress install screen.

# dockdown: Turn the site off

'sh dockdown.sh'
