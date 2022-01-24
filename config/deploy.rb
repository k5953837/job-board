# config valid for current version and patch releases of Capistrano
lock '~> 3.16.0'
set :application, 'job_board'
set :repo_url, 'git@github.com:k5953837/job-board.git'
set :rbenv_map_bins, %w[rake gem bundle ruby rails]
set :rbenv_type, :user
set :rbenv_ruby, '3.1.0'
set :format, :pretty
set :log_level, :info
set :bundle_path, -> { shared_path.join('vendor/bundle') }
set :keep_releases, 5
set :conditionally_migrate, true
set :ssh_options, {
  forward_agent: true
}
append :linked_dirs, 'log', 'public/assets', 'tmp', 'vendor/bundle'
set :passenger_restart_with_touch, false
