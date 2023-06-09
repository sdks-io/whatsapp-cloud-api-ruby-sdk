# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # ButtonParameter Model.
  class ButtonParameter < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Indicates the type of parameter for the button.
    # @return [ButtonParameterTypeEnum]
    attr_accessor :type

    # Required for quick_reply buttons. Developer-defined payload that is
    # returned when the button is clicked in addition to the display text on the
    # button.
    # @return [String]
    attr_accessor :payload

    # Required for URL buttons. Developer-provided suffix that is appended to
    # the predefined prefix URL in the template.
    # @return [String]
    attr_accessor :text

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['payload'] = 'payload'
      @_hash['text'] = 'text'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        payload
        text
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type = nil,
                   payload = SKIP,
                   text = SKIP)
      @type = type
      @payload = payload unless payload == SKIP
      @text = text unless text == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('type') ? hash['type'] : nil
      payload = hash.key?('payload') ? hash['payload'] : SKIP
      text = hash.key?('text') ? hash['text'] : SKIP

      # Create object from extracted values.
      ButtonParameter.new(type,
                          payload,
                          text)
    end
  end
end
