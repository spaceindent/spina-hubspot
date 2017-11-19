$:.push File.expand_path("../lib", __FILE__)

require "spina/hubspot/version"

Gem::Specification.new do |s|
  s.name        = "spina-hubspot"
  s.version     = Spina::Hubspot::VERSION
  s.authors     = ["Michael Wawra"]
  s.email       = ["michael+gems@spaceindent.com"]
  s.homepage    = "https://github.com/spaceindent/spina-hubspot"
  s.summary     = "Hubspot for Spina CMS"
  s.description = "Integrate Hubspot CRM with Spina CMS powered websites."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*_spec.rb"]

  s.add_runtime_dependency 'hubspot-ruby'
  s.add_runtime_dependency 'spina', '~> 0.11', '>= 0.11.1'
  s.add_development_dependency 'rspec-rails', '~> 3.6.0', '>= 3.6.0'
  s.add_development_dependency "factory_girl_rails", "~> 4.0"
  s.add_development_dependency 'capybara', '~> 2.14.3', '>= 2.14.3'
  s.add_development_dependency 'faker', '~> 1.8.4'
end
