module IbanValidation
  class IbanValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, values)
      unless IBANTools::IBAN.valid? values
        record.errors.add attribute, :invalid
      end
    end
  end
end
