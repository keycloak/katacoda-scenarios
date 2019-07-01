## Request against the endpoints

Now that our service is running, we can make requests against it. Let's start with a request to the public endpoint (unsecured).
Open a new terminal and perform these requests:  

`curl -v -X GET \
  http://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/service/public`{{execute}}

 Now let's make a request against the secured endpoint:

`curl -v -X GET \
  http://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/service/secured`{{execute}}  

You see an `access denied` response.
