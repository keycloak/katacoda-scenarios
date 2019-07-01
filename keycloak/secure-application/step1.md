## Configure our Application

The application needs some configuration specific to keycloak. For most Keycloak adapters, this configuration exists in the `keycloak.json` file:

<pre class="file"  data-filename="keycloak.json" data-target="replace">
{
    "realm": "katacoda",
    "auth-server-url": "https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com/auth",
    "ssl-required": "external",
    "resource": "web-client"
  }
</pre>


* **realm** : The `realm` in which this service belongs
* **auth-server-url** : This is the `url` of our Keycloak instance.
* **resource** : The name of the client defined in Keycloak

## Create the client in Keycloak

### Manual creation

You can manually create the client in the Keycloak console.
Go the Keycloak Web Console then open the `Clients` screen, click on `Create` and enter the following values:

* **Client ID** : web-client
* **Root URL** : https://[[HOST_SUBDOMAIN]]-8000-[[KATACODA_HOST]].environments.katacoda.com

Click `save` and you are done.

### Import the client with a rest call

Just execute this script:

`export access_token=$(\
    curl -X POST https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com/auth/realms/master/protocol/openid-connect/token \
    -H 'content-type: application/x-www-form-urlencoded' \
    -d 'username=admin&password=admin&grant_type=password&client_id=admin-cli' | jq --raw-output '.access_token' \
 )
curl -v -X POST https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com/auth/admin/realms/katacoda/clients -H 'content-type: application/json' -H "Authorization: Bearer "$access_token -d @/root/web-client.json`{{execute}}
