# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coercible/hash_to_array/version'

Gem::Specification.new do |s|
  s.name          = 'coercible-hash_to_array'
  s.version       = Coercible::HashToArray::VERSION
  s.authors       = ['Krzysztof Buszewicz']
  s.email         = ['kbuszewicz@grupainteger.pl']
  s.summary       = 'Custom Coercible::Coercer::Hash to_array method'
  s.description   = 'Use this gem if you\'re using Virtus'                  \
                    ' (https://github.com/solnic/virtus)'                   \
                    ' and want to be able to enforce collection attribute'  \
                    ' passing hash to initializer.'
  s.homepage      = 'https://github.com/Inittec/coercible-hash_to_array'
  s.license       = 'MIT'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|s|features)/})
  s.require_paths = ['lib']

  s.add_dependency 'railties', '>= 3.1'
end
