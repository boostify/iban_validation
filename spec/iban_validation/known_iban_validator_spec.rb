require 'spec_helper'

module IbanValidation
  describe KnownIbanValidator do
    class KnownModel
      include ActiveModel::Validations
      attr_accessor :iban
      validates :iban, known_iban: true

      def initialize(iban)
        @iban = iban
      end
    end

    it 'is invalid' do
      model = KnownModel.new 'DE'
      expect(model).to be_invalid
    end

    it 'is invalid' do
      model = KnownModel.new 'GB82WEST12345698765432'
      expect(model).to be_invalid
    end

    it 'is valid' do
      model = KnownModel.new 'DE89370400440532013000'
      expect(model).to be_valid
    end

    it 'is valid' do
      model = KnownModel.new 'DE15763500000036109724'
      expect(model).to be_valid
    end
  end
end
