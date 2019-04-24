The last step before we have a complete configured realm is to create an user. 

On the left menu, click `Users` , that will bring you to a list of existing users. 
On the right of the table, you should see an `Add user` button, click it. 

Only the username is mandatory, let's fill it with `test` and click `save`. 

You are now on the details page of your newly created user. We still need to do 2 tasks : 
* Give the user credentials
* Assign the role `user` to our `test` user. 

## Create initial Credentials

Click on the tab `Credentials` and add a new password : `test` , confirm it. 
You will also notice the `Temporary` checkbox, if this one is enabled, the user will have to chnage his password the first time he logs in. It's up to you if you want to keep it or for this lesson.

## Assign Realm Role to User

The last step is to assign the role `user` to our `test` user. 
Click on the tab `Role Mappings` and in `Available Roles` you should see our `user` role. 
Select it and push the button `Add selected`. 

