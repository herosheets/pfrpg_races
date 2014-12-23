$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pfrpg_races/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pfrpg_races"
  s.version     = PfrpgRaces::VERSION
  s.authors     = ["Jordan OMara"]
  s.email       = ["jordan@herosheets.com"]
  s.homepage    = "http://herosheets.com"
  s.summary     = "PFRPG races"
  s.description = "races"

  s.files = Dir["{lib}/**/*", "LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
end
