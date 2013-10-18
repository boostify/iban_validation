require 'active_model'
require 'iban-tools'
require 'iban_validation/iban_validator'
require 'iban_validation/known_iban_validator'
require 'iban_validation/version'

module IbanValidation
end

ActiveModel::Validations.send(:include, IbanValidation)
