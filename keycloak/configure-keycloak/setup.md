## Download the Keycloak distribution

Let's start by downloading the Keycloak distribution:

`curl https://downloads.jboss.org/keycloak/7.0.0/keycloak-7.0.0.zip --output keycloak-7.0.0.zip`{{execute}}

Once downloaded, unzip it:

`unzip keycloak-7.0.0.zip`{{execute}}

## Create Initial Admin user

First, let's go to the `bin` folder of our Keycloak Server:

`cd keycloak-7.0.0/bin`{{execute}}

And run this script: 

`./add-user-keycloak.sh -r master -u admin -p admin`{{execute}}

## Start the server

`./standalone.sh -b 0.0.0.0`{{execute}}