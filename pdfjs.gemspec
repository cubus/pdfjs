# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pdfjs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mihai Târnovan"]
  gem.email         = ["mihai.tarnovan@cubus.ro"]
  gem.description   = %q{Integrate Mozilla's pdfjs with Rails}
  gem.summary       = %q{Integrate Mozilla's pdfjs with Rails}
  gem.homepage      = "https://github.com/cubus/pdfjs"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "pdfjs"
  gem.require_paths = ["lib"]
  gem.version       = Pdfjs::VERSION
end
