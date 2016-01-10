docker-nagios
==
Quickstart [Nagios Core](https://assets.nagios.com/downloads/nagioscore/docs/nagioscore/4/en/toc.html)

* reference
  - [cpuguy83/docker-nagios](https://github.com/cpuguy83/docker-nagios)
  - [Nagios Core Ubuntu Quickstart](https://assets.nagios.com/downloads/nagioscore/docs/nagioscore/4/en/quickstart-ubuntu.html)


Setup docker image
==

Method 1: Build it
--
Copy the sources to your docker host and build the container:

    # docker build --rm -t <username>/nagios .

Method 2: Pull from Docker Hub
--
Get it from Docker Hub,

    # docker pull docker.io/koyeung/nagios

Running
==

Run the container and browse to `http://containerhost/nagios/`,

    # docker run --name nagios -d -p 80:80 <username>/nagios

The following are configurable environment variables (and the default values)

    NAGIOSADMIN_USER=nagiosadmin
    NAGIOSADMIN_PASS=nagios
    NAGIOSADMIN_EMAIL=nagios@localhost
    TZ=Etc/UTC

Please check `Dockerfile` for more information.
