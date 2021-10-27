require_relative "lib/usercommunications/version"

Gem::Specification.new do |spec|
  spec.name        = "usercommunications"
  spec.version     = Usercommunications::VERSION
  spec.authors     = ["vineethmoturi"]
  spec.email       = ["moturivineeth321@gmail.com"]
  spec.homepage    = "http://website.com"
  spec.summary     = "Ruby gem, Created for SearchPod mail generation."
  spec.description = "Ruby gem, Created for SearchPod mail generation."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Godservent/usercommunications.git"
  #spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.1"
end
