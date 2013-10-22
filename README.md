# IbanValidation

ActiveModel Internation Bank Account Number (IBAN) validator based on IBANTools

## Installation

Add this line to your application's Gemfile:

    gem 'iban_validation'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install iban_validation

## Usage

### Basic IBAN validator (format only)

In your rails model:

    validates :iban_attribute, iban: true

This validates the format of the IBAN based on the specification for each
country.

### Known IBAN validator

In your rails model:

    validates :iban_attribute, known_iban: true

This version additionally validates whether the bank code part of the IBAN
(Bankleitzahl, Bank Clearing Nummer) is known by comparing it to a list of
known bank codes. This list is provided by the `banking_data` gem and currently
only comprises DE, AT and CH.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
