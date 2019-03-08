
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubellite/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubellite'
  spec.version       = Rubellite::VERSION
  spec.authors       = ['Danielius Visockas']
  spec.email         = ['danieliusvisockas@gmail.com']

  spec.summary       = 'Write ruby with even less characters'
  spec.description   = 'Rubellite allows you to write ruby without the ends and use indentation to guide the interpreter where the block ends'
  spec.homepage      = 'https://github.com/dvisockas/rubellite'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_runtime_dependency 'temple', ['>= 0.7.6', '< 0.9']
  spec.add_runtime_dependency 'tilt', ['>= 2.0.6', '< 2.1']
end
