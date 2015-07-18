Gem::Specification.new do |s|
    s.name        = 'capistrano-deploy-rsync'
    s.version     = '0.1.0'
    s.homepage    = "https://github.com/nachinius/capistrano-deploy-rsync"
    s.licenses    = ['MIT']
    s.summary     = "Simple Capistrano3 deployments using rsync"
    s.description = "Use rsync as a deployment strategy for your capistrano3 deployments"
    s.authors     = ["nachinius"]
    s.email       = 'ignacio.peixoto@gmail.com'
    s.files       = ["lib/capistrano/deploy_rsync.rb"]
    s.require_paths= ["lib"]
end
