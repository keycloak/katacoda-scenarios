## Download the Keycloak distribution

Let's start by downloading the Keycloak distribution:

`curl https://downloads.jboss.org/keycloak/6.0.1/keycloak-6.0.1.zip --output keycloak-6.0.1.zip`{{execute}}

Once downloaded, unzip it:

`unzip keycloak-6.0.1.zip`{{execute}}

## Create Initial Admin user

First, let's go to the `bin` folder of our Keycloak Server:

`cd keycloak-6.0.1/bin`{{execute}}

And run this script: 

`./add-user-keycloak.sh -r master -u admin -p admin`{{execute}}

## Start the server

`./standalone.sh -b 0.0.0.0`{{execute}}