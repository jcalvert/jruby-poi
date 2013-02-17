# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "jruby-poi"
  s.version     = 0.1
  s.authors     = ["Jonathan Calvert"]
  s.email       = ["athemeus@athemeus.com"]
  s.homepage    = "https://github.com/jcalvert/jruby-poi"
  s.summary     = "Wrapper for POI Jars as a Gem"
  s.description = "Wrapper for POI Jars as a Gem"

  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.platform      = 'java'

end