# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # Name Model.
  class Name < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Full name, as it normally appears.
    # @return [String]
    attr_accessor :formatted_name

    # Full name, as it normally appears.
    # @return [String]
    attr_accessor :first_name

    # Full name, as it normally appears.
    # @return [String]
    attr_accessor :last_name

    # Full name, as it normally appears.
    # @return [String]
    attr_accessor :middle_name

    # Full name, as it normally appears.
    # @return [String]
    attr_accessor :suffix

    # Full name, as it normally appears.
    # @return [String]
    attr_accessor :prefix

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['formatted_name'] = 'formatted_name'
      @_hash['first_name'] = 'first_name'
      @_hash['last_name'] = 'last_name'
      @_hash['middle_name'] = 'middle_name'
      @_hash['suffix'] = 'suffix'
      @_hash['prefix'] = 'prefix'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        first_name
        last_name
        middle_name
        suffix
        prefix
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(formatted_name = nil,
                   first_name = SKIP,
                   last_name = SKIP,
                   middle_name = SKIP,
                   suffix = SKIP,
                   prefix = SKIP)
      @formatted_name = formatted_name
      @first_name = first_name unless first_name == SKIP
      @last_name = last_name unless last_name == SKIP
      @middle_name = middle_name unless middle_name == SKIP
      @suffix = suffix unless suffix == SKIP
      @prefix = prefix unless prefix == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      formatted_name =
        hash.key?('formatted_name') ? hash['formatted_name'] : nil
      first_name = hash.key?('first_name') ? hash['first_name'] : SKIP
      last_name = hash.key?('last_name') ? hash['last_name'] : SKIP
      middle_name = hash.key?('middle_name') ? hash['middle_name'] : SKIP
      suffix = hash.key?('suffix') ? hash['suffix'] : SKIP
      prefix = hash.key?('prefix') ? hash['prefix'] : SKIP

      # Create object from extracted values.
      Name.new(formatted_name,
               first_name,
               last_name,
               middle_name,
               suffix,
               prefix)
    end
  end
end
