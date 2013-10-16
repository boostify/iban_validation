require 'spec_helper'

module IbanValidation
  describe IbanValidator do
    class Model
      include ActiveModel::Validations
      attr_accessor :iban
      validates :iban, iban: true

      def initialize(iban)
        @iban = iban
      end
    end

    it 'is invalid' do
      model = Model.new 'DE'
      expect(model).to be_invalid
    end

    it 'is invalid' do
      model = Model.new 'GB82WEST12345698765432'
      expect(model).to be_valid
    end
  end
end
