# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # RegistrationController
  class RegistrationController < BaseController
    # Used to register a phone number or to migrate WhatsApp Business Accounts
    # from a current On-Premises deployment to the new Cloud-Based API. Business
    # Solution Providers (BSPs) must authenticate themselves with an access
    # token with the whatsapp_business_management permission.
    # @param [String] phone_number_id Required parameter: Example:
    # @param [RegisterPhoneRequest] body Required parameter: Example:
    # @return [SuccessResponse] response from the API call
    def register_phone(phone_number_id,
                       body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/{Phone-Number-ID}/register',
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

    # Used to deregister a phone number. Deregister phone removes a previously
    # registered phone. You can always re-register your phone using by repeating
    # the registration process. Business Solution Providers (BSPs) must
    # authenticate themselves with an access token with the
    # whatsapp_business_management permission.
    # @param [ContentTypeEnum] content_type Required parameter: Example:
    # @param [String] phone_number_id Required parameter: Example:
    # @return [SuccessResponse] response from the API call
    def deregister_phone(content_type,
                         phone_number_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/{Phone-Number-ID}/deregister',
                                     Server::DEFAULT)
                   .header_param(new_parameter(content_type, key: 'Content-Type'))
                   .template_param(new_parameter(phone_number_id, key: 'Phone-Number-ID')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SuccessResponse.method(:from_hash)))
        .execute
    end
  end
end