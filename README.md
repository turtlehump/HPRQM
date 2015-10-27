# HPRQM
repo for our SE project

## [HPRQM Web App](http://52.89.253.62/)
###[production link](http://52.89.253.62/)
The final production web app.
###[development link](http://52.89.253.62:3000)
The development web app view.

### Bootstrap information
Bootstrap was installed [using](http://www.gotealeaf.com/blog/integrating-rails-and-bootstrap-part-1) this guid. Because SASS is officially maintained by the Bootstrap team and rails comes with a gem sass-rails, we will be using SASS.

## Usefull Rails commands
Install all of the gems
`bundle install`
start the development server
`rails s`
build the database for the first time
`rake db:migrate`
Reset the database and run all migrations
`rake db:migrate:reset`

## How to connect to the AWS instance.

Download [RQMApp.tar.gz](https://dl.dropboxusercontent.com/u/53637793/RQMApp.tar.gz)

Unarchive using the command:
`tar -xzf RQMApp.tar.gz`

Connect using the command:
`./rqm_connect`

Note: I added rules to ignore thees files so that they would not end up in the repo.
