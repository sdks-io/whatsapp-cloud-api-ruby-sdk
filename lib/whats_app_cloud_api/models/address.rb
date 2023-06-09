# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # Address Model.
  class Address < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Street number and name
    # @return [String]
    attr_accessor :street

    # City name.
    # @return [String]
    attr_accessor :city

    # State abbreviation.
    # @return [String]
    attr_accessor :state

    # ZIP code.
    # @return [String]
    attr_accessor :zip

    # Full country name.
    # @return [String]
    attr_accessor :country

    # Two-letter country abbreviation.
    # @return [String]
    attr_accessor :country_code

    # Two-letter country abbreviation.
    # @return [PersonalInformationTypeEnum]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['street'] = 'street'
      @_hash['city'] = 'city'
      @_hash['state'] = 'state'
      @_hash['zip'] = 'zip'
      @_hash['country'] = 'country'
      @_hash['country_code'] = 'country_code'
      @_hash['type'] = 'type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        street
        city
        state
        zip
        country
        country_code
        type
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(street = SKIP,
                   city = SKIP,
                   state = SKIP,
                   zip = SKIP,
                   country = SKIP,
                   country_code = SKIP,
                   type = SKIP)
      @street = street unless street == SKIP
      @city = city unless city == SKIP
      @state = state unless state == SKIP
      @zip = zip unless zip == SKIP
      @country = country unless country == SKIP
      @country_code = country_code unless country_code == SKIP
      @type = type unless type == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      street = hash.key?('street') ? hash['street'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      zip = hash.key?('zip') ? hash['zip'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      country_code = hash.key?('country_code') ? hash['country_code'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP

      # Create object from extracted values.
      Address.new(street,
                  city,
                  state,
                  zip,
                  country,
                  country_code,
                  type)
    end
  end
end
