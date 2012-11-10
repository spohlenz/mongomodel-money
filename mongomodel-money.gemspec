# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.name          = "mongomodel-money"
  gem.version       = "0.1"
  gem.authors       = ["Sam Pohlenz"]
  gem.email         = ["sam@sampohlenz.com"]
  gem.description   = "MongoModel compatibility for the Money gem."
  gem.summary       = "MongoModel compatibility for the Money gem."
  gem.homepage      = "https://github.com/spohlenz/mongomodel-money"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency "money", "~> 5.0"
  gem.add_development_dependency "rspec", "~> 2.0"
end
