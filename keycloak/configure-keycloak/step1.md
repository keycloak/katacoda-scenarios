Let's configure our Keycloak Server by creating a realm, a role, and a user.

## Login to the Keycloak Admin Console

To access the Keycloak Web Console follow this link: https://[[HOST_SUBDOMAIN]]-8443-[[KATACODA_HOST]].environments.katacoda.com/

On the landing page, click on **Administration Console**. This will bring you to a login form. Enter the following credentials: `admin` / `admin`.

You are now on the `Master` realm configuration page, but let's create our own realm.

At the top of the left menu, hover over `Master`. When a button to add a Realm appears, click it. Give the realm a name, such as `katacoda`, and click `create`. Congratulations! You have created your first realm.
