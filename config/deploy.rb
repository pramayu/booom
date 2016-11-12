# config valid only for current version of Capistrano
lock '3.6.1'


set :repo_url, 'git@github.com:pramayu/booom.git'

set :user, 'pramayu'
set :application, 'khapoo'
set :rails_env, 'production'
server '103.247.8.220', user: "#{fetch(:user)}", roles: %w{app web}, primary: true
set :deploy_to,       "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
set :pty, true
set :rbenv_ruby, '2.3.1'

set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml', 'config/puma.rb')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')

set :config_example_suffix, '.example'
set :config_files, %w{config/database.yml config/secrets.yml}
set :puma_conf, "#{shared_path}/config/puma.rb"

namespace :deploy do
  before 'check:linked_files', 'config:push'
  before 'check:linked_files', 'puma:config'
  before 'check:linked_files', 'puma:nginx_config'
  before 'deploy:migrate', 'deploy:db:create'
  after 'puma:smart_restart', 'nginx:restart'
end
