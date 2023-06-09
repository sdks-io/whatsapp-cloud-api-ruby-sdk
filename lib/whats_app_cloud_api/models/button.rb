# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # Button Model.
  class Button < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # Button title. It cannot be an empty string and must be unique within the
    # message. Emojis are supported, markdown is not.
    # @return [String]
    attr_accessor :title

    # Unique identifier for your button. This ID is returned in the webhook when
    # the button is clicked by the user.
    # @return [String]
    attr_accessor :id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['title'] = 'title'
      @_hash['id'] = 'id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        title
        id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type = 'reply',
                   title = SKIP,
                   id = SKIP)
      @type = type
      @title = title unless title == SKIP
      @id = id unless id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type'] ||= 'reply'
      title = hash.key?('title') ? hash['title'] : SKIP
      id = hash.key?('id') ? hash['id'] : SKIP

      # Create object from extracted values.
      Button.new(type,
                 title,
                 id)
    end
  end
end
