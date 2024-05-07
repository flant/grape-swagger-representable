# frozen_string_literal: true

require_relative 'lib/grape-swagger/representable/version'

Gem::Specification.new do |s|
  s.name          = 'grape-swagger-representable'
  s.version       = GrapeSwagger::Representable::VERSION
  s.authors       = ['Kirill Zaitsev']
  s.email         = ['kirik910@gmail.com']

  s.summary       = 'Grape swagger adapter to support representable object parsing'
  s.homepage      = 'https://github.com/Bugagazavr/grape-swagger-representable'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.bindir        = 'exe'
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.7', '< 4'

  s.add_runtime_dependency 'grape-swagger', '~> 2.0'
  s.add_runtime_dependency 'representable', '~> 3.2'
end
