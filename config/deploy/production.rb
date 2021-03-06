set :bundle_without, %w{development test staging}.join(' ')

set :stage, :production

set :repo_url, 'git@github.com:anbublacky/deploy-with-passenger.git'

set :branch, 'master'

set :deploy_to, '~/deploy_with_passenger' # added for production server

server = %w{ubuntu@52.90.50.4}

role :app, server
role :web, server
role :db,  server
set :rails_env, 'production'
