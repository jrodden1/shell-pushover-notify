# Simple BASH Shell Script for Pushover Notifications 

## Use
This shell script was developed mainly for use on server deployments where environment variables are set (and the server doesn't turn off and lose them)  The nice part is that this script can live on a production server and notify you after a deploy has been finished (for example) and you don't have to have a config file that has all your secrets in it - just set them as ENV vars. 

## How to use 
1. clone or download this repo.  Copy the `pushover.sh` file to your repo or server's home directory. 
2. You *may* have to give the bash script executable rights to do that as an admin / sudoer, you can run `chmod +x pushover.sh`
3. Set your Environment variables on the server
   1. If using something like Heroku, you can set these in the webapps settings under 'Configuration Vars'
   2. Otherwise, login to the server and set the following environment vars below


## Required Environment Vars
`PUSHOVER_API_KEY` - you'll create a new app in your Pushover.net account and then use the app api key / token it gives you. 
`PUSHOVER_USER_KEY` - this is your Pushover.net user key
`PUSHOVER_MESSAGE_TITLE` - title for the push notification
`PUSHOVER_DEPLOY_MESSAGE` - this is the actual message of the push notification

**To Set The ENV Vars** 
If using an online hosting service, refer to that services help articles for setting environment or config variables.  Otherwise, at the terminal prompt on the server simply type:
`PUSHOVER_API_KEY=anapikey123abc123` and hit `enter` and it'll be set. (Basically `ENV_VARIABLE_NAME=valueOfVariable`)  If there are spaces in the variable value, be sure to "" the value.

You can view the contents of an ENV var by running the following command in the terminal:
`echo $PUSHOVER_API_KEY` 

Simply repeat the process for all 4 of the ENV vars mentioned above.  

