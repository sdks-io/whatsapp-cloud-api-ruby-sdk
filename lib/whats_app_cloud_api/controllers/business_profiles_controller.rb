# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # BusinessProfilesController
  class BusinessProfilesController < BaseController
    # Use this endpoint to retrieve your business’ profile. This business
    # profile is visible to consumers in the chat thread next to the profile
    # photo. The profile information will contain a business profile ID which
    # you can use to make API calls.
    # @param [String] phone_number_id Required parameter: Example:
    # @param [String] fields Optional parameter: Here you can specify what you
    # want to know from your business as a comma separated list of fields.
    # Available fields include: id, about, messaging_product, address,
    # description, vertical, email, websites, profile_picture_url
    # @return [GetBusinessProfileIDResponse] response from the API call
    def get_business_profile_id(phone_number_id,
                                fields: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/{Phone-Number-ID}/whatsapp_business_profile',
                                     Server::DEFAULT)
                   .template_param(new_parameter(phone_number_id, key: 'Phone-Number-ID')
                                    .should_encode(true))
                   .query_param(new_parameter(fields, key: 'fields'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetBusinessProfileIDResponse.method(:from_hash)))
        .execute
    end

    # Use this endpoint to update your business’ profile information such as the
    # business description, email or address.
    # @param [String] phone_number_id Required parameter: Example:
    # @param [UpdateBusinessProfileRequest] body Required parameter: Example:
    # @return [SuccessResponse] response from the API call
    def update_business_profile(phone_number_id,
                                body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/{Phone-Number-ID}/whatsapp_business_profile',
                                     Server::DEFAULT)
                   .template_param(new_parameter(phone_number_id, key: 'Phone-Number-ID')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SuccessResponse.method(:from_hash)))
        .execute
    end
  end
end