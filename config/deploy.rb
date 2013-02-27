require "bundler/capistrano"
require "cap_bootstrap/capistrano"

server "198.211.102.14", :web, :app, :db, primary: true

set :user, "deployer"
set :application, "pantry"
set :user, "deploy"
set :application, "food-pantry-manager"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false
set :sudo_prompt, ""
set :scm, "git"
set :repository, "git@github.com:tbrooke/food-pantry-manager.git"
set :branch, "deploy"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy", "deploy:cleanup" # keep only the last 5 releases
