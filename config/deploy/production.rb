set :application, 'job_board'
server '52.68.199.42', user: 'deploy', roles: %w[web app db], primary: true
set :user, 'deploy'
set :stage, 'production'
set :branch, 'main'
set :deploy_to, '/home/deploy/job_board'
set :rails_env, 'production'
append :linked_files, 'config/database.yml', "config/credentials/#{fetch(:rails_env)}.key"
