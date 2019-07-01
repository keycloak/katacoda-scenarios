The last step to complete the configuration of the realm is to create a user.

On the left menu, click `Users`. You see a list of users. On the right of the table, look for `Add user`. Click that button.

Only the username is mandatory, so let's fill in that field with `test` and click `save`.

You are now on the details page of the new user. We still need to perform two tasks:
* Give the user credentials.
* Assign the role `user` to our `test` user.

## Create Initial Credentials

Click on the `Credentials` tab and add a new password: `test`. Confirm the password. Notice the `Temporary` checkbox. If it is enabled, the user has to change this password at the first login. You can decide if you want to change that setting or leave it unchanged for this lesson. Click Reset Password.

## Assign the Realm Role to the User

The last step is to assign the role `user` to our `test` user.
Click on the tab `Role Mappings`. In `Available Roles`, you see the `user` role.
Select it and click `Add selected`.
