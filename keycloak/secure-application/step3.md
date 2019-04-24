## Obtain the token 

To make a secure request we need to obtain a token from Keycloak. For that, we are using the token endpoint and using the credentails of our `test` user : 

`export access_token=$(\
    curl -X POST http://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com/auth/realms/katacoda/protocol/openid-connect/token \
    -H 'content-type: application/x-www-form-urlencoded' \
    -d 'username=test&password=test&grant_type=password&client_id=admin-cli' | jq --raw-output '.access_token' \
 )`{{execute}}

 Here we store the `acess_token` in an environment variable : 

 `echo $access_token`{{execute}}

## Make a secure request

We can now use this token and pass it as header in our request. The header will have this format : 
* **key** : `Authorization`
* **value** : `Bearer ` + `$access_token`

`curl -v -X GET \
  http://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/service/secured \
  -H "Authorization: Bearer "$access_token`{{execute}}