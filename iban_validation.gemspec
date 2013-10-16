# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iban_validation/version'

Gem::Specification.new do |gem|
  gem.name          = "iban_validation"
  gem.version       = IbanValidation::VERSION
  gem.authors       = ["Frank C. Eckert"]
  gem.email         = ["frank.eckert@boost-project.com"]
  gem.description   = <<-EOF
    IbanValidation provides a simple ActiveModel::EachValidator for
    formally validating International Bank Account Numbers (IBAN).
    It is based on the IBANTools gem.
  EOF
  gem.summary       = %q{ActiveModel IBAN validator}
  gem.homepage      = "https://github.com/opahk/iban_validation"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'activemodel'
  gem.add_dependency 'iban-tools'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'coveralls'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'rubocop'
end
