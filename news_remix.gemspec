# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "news_remix/version"

Gem::Specification.new do |s|
  s.name        = "news_remix"
  s.version     = NewsRemix::VERSION
  s.authors     = ["TM Lee"]
  s.email       = ["tm89lee@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Says.com News:Remix API wrapper for Ruby}
  s.description = %q{Looking to access Says.com News:Remix story feed? This is a Ruby Wrapper for that.}

  s.rubyforge_project = "news_remix"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
