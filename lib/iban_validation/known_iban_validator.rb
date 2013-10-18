module IbanValidation
  class KnownIbanValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, values)
      if IBANTools::IBAN.valid? values
        if IBANTools::IBAN.new(values).to_bic.nil?
          record.errors.add attribute, :unknown
        end
      else
        record.errors.add attribute, :invalid
      end
    end
  end
end
