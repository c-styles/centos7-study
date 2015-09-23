local_mode true

chef_repo_dir = File.absolute_path( File.dirname(__FILE__) + "/.." )
cookbook_path ["#{chef_repo_dir}/cookbooks","#{chef_repo_dir}/site-cookbooks"]
node_path     "#{chef_repo_dir}/nodes"
role_path     "#{chef_repo_dir}/roles"

knife[:berkshelf_path] = "#{chef_repo}/cookbooks"

ssl_verify_mode  :verify_peer
