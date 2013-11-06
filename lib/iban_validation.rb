require 'active_model'
require 'iban-tools'
require 'iban_validation/iban_validator'
require 'iban_validation/known_iban_validator'
require 'iban_validation/version'

module IbanValidation
end

ActiveModel::Validations.send(:include, IbanValidation)
I18n.load_path += Dir[File.expand_path(File.join(File.dirname(__FILE__),
  '../locales', '*.yml')).to_s]
