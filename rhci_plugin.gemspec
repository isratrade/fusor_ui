require File.expand_path('../lib/rhci_plugin/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "rhci_plugin"
  s.version     = RhciPlugin::VERSION
  s.date        = '2014-11-23'
  s.authors     = ["Joseph Magen"]
  s.email       = ["jmagen@redhat.com"]
  s.homepage    = "http://github.com/fusor"
  s.summary     = "Plugin to enable Red Hat Common Installer in Satellite"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

end
