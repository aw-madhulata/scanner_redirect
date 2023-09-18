role :app, %w{deployer@135.181.88.8}#, my_property: :my_value
role :web, %w{deployer@135.181.88.8}#, other_property: :other_value
role :db,  %w{deployer@135.181.88.8}
# set :branch, 'main'

# set :default_env, { 'PASSENGER_INSTANCE_REGISTRY_DIR' => '/home/deployer/passenger_temp' }
server '135.181.88.8',
  user: 'deployer',
  roles: %w{web app},
  ssh_options: {
    user: 'deployer', # overrides user setting above
    keys: %w(~/.ssh/id_rsa),
    forward_agent: false,
    auth_methods: %w(publickey password),
    password: 'please use keys'
  }
