role :app, %w{donuts_hack1}
role :web, %w{donuts_hack1}
role :db,  %w{donuts_hack1}

set :stage, :production
set :rails_env, :production

set :deploy_to, '/home/ec2-user/donuts_hack1'

set :default_env, {
  rbenv_root: "/home/ec2-user/rbenv",
  path: "/home/ec2-user/rbenv/shims:/home/ec2-user/rbenv/bin:$PATH",
}