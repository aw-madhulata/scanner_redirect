lock "~> 3.17.1"
set :application, "scanner_redirect"
set :repo_url, "git@github.com:aw-madhulata/scanner_redirect"
set :pty,  false
set :deploy_to, "/home/deployer/app/scanner_redirect"
set :passenger_restart_with_touch, false
set :linked_dirs, ["tmp", "log", "storage"]
set :default_stage, "production"
