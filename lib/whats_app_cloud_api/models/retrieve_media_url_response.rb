# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # RetrieveMediaURLResponse Model.
  class RetrieveMediaURLResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :messaging_product

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :url

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :mime_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :sha256

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :file_size

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['messaging_product'] = 'messaging_product'
      @_hash['url'] = 'url'
      @_hash['mime_type'] = 'mime_type'
      @_hash['sha256'] = 'sha256'
      @_hash['file_size'] = 'file_size'
      @_hash['id'] = 'id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(messaging_product = nil,
                   url = nil,
                   mime_type = nil,
                   sha256 = nil,
                   file_size = nil,
                   id = nil)
      @messaging_product = messaging_product
      @url = url
      @mime_type = mime_type
      @sha256 = sha256
      @file_size = file_size
      @id = id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      messaging_product =
        hash.key?('messaging_product') ? hash['messaging_product'] : nil
      url = hash.key?('url') ? hash['url'] : nil
      mime_type = hash.key?('mime_type') ? hash['mime_type'] : nil
      sha256 = hash.key?('sha256') ? hash['sha256'] : nil
      file_size = hash.key?('file_size') ? hash['file_size'] : nil
      id = hash.key?('id') ? hash['id'] : nil

      # Create object from extracted values.
      RetrieveMediaURLResponse.new(messaging_product,
                                   url,
                                   mime_type,
                                   sha256,
                                   file_size,
                                   id)
    end
  end
end
