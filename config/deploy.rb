require "bundler/capistrano"
require "cap_bootstrap/capistrano"

server "192.81.219.43", :web, :app, :db, primary: true

<<<<<<< HEAD
set :user, "deployer"
set :application, "pantry"
=======
set :user, "deploy"
set :application, "food-pantry-manager"
>>>>>>> ui-improvements
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false
set :sudo_prompt, ""
set :scm, "git"
set :repository, "git@github.com:tbrooke/food-pantry-manager.git"
<<<<<<< HEAD
set :branch, "deploy"
=======
set :branch, "ui-improvements"
>>>>>>> ui-improvements

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup" # keep only the last 5 releases
