require "iban_validation/iban_validator"
require "iban_validation/version"

module IbanValidation
end

ActiveModel::Validations.send(:include, IbanValidation)
