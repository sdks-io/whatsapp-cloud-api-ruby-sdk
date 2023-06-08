# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # Org Model.
  class Org < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Name of the contact's company.
    # @return [String]
    attr_accessor :company

    # Name of the contact's department.
    # @return [String]
    attr_accessor :department

    # Contact's business title.
    # @return [String]
    attr_accessor :title

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['company'] = 'company'
      @_hash['department'] = 'department'
      @_hash['title'] = 'title'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        company
        department
        title
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(company = SKIP,
                   department = SKIP,
                   title = SKIP)
      @company = company unless company == SKIP
      @department = department unless department == SKIP
      @title = title unless title == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      company = hash.key?('company') ? hash['company'] : SKIP
      department = hash.key?('department') ? hash['department'] : SKIP
      title = hash.key?('title') ? hash['title'] : SKIP

      # Create object from extracted values.
      Org.new(company,
              department,
              title)
    end
  end
end
