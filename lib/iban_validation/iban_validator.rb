module IbanValidation
  class IbanValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, values)
      unless IBANTools::IBAN.valid? values
        record.errors.add attribute, 'is not a valid IBAN'
      end
    end
  end
end
