Let's secure our first service.

## Configure our Service

The service needs some configuration specific to keycloak. For most Keycloak adapters, this will happen in a file named `keycloak.json`:

<pre class="file"  data-filename="keycloak.json" data-target="replace">
{
    "realm": "katacoda",
    "bearer-only": true,
    "auth-server-url": "https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com/auth",
    "ssl-required": "external",
    "resource": "service-nodejs"
  }
</pre>


* **realm** : The `realm` in which this service belongs
* **bearer-only** : This is a flag to indicate that this service will not perform any redirects; it will only accept authenticated requests.
* **auth-server-url** : This is the `url` of our Keycloak instance.

## Start the service

Go to the service directory:

`cd /root/service-nodejs/`{{execute}}

Install the service:

`npm install`{{execute}}

And run it:

`npm start`{{execute}}
