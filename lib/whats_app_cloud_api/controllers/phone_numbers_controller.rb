# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  # PhoneNumbersController
  class PhoneNumbersController < BaseController
    # When you query all the phone numbers for a WhatsApp Business Account, each
    # phone number has an id. You can directly query for a phone number using
    # this id.
    # @param [String] phone_number_id Required parameter: Example:
    # @return [GetPhoneNumberByIDResponse] response from the API call
    def get_phone_number_by_id(phone_number_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/{Phone-Number-ID}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(phone_number_id, key: 'Phone-Number-ID')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(GetPhoneNumberByIDResponse.method(:from_hash)))
        .execute
    end

    # Used to request a code to verify a phone number's ownership. You need to
    # verify the phone number you want to use to send messages to your
    # customers. Phone numbers must be verified through SMS/voice call. The
    # verification process can be done through the Graph API calls specified
    # below.
    # @param [String] phone_number_id Required parameter: Example:
    # @param [RequestVerificationCodeMethodEnum] code_method Required parameter:
    # Chosen method for verification.
    # @param [String] locale Required parameter: Your locale. For example:
    # "en_US".
    # @return [SuccessResponse] response from the API call
    def request_verification_code(phone_number_id,
                                  code_method,
                                  locale)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/{Phone-Number-ID}/request_code',
                                     Server::DEFAULT)
                   .template_param(new_parameter(phone_number_id, key: 'Phone-Number-ID')
                                    .should_encode(true))
                   .form_param(new_parameter(code_method, key: 'code_method'))
                   .form_param(new_parameter(locale, key: 'locale'))
                   .header_param(new_parameter('application/x-www-form-urlencoded', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SuccessResponse.method(:from_hash)))
        .execute
    end

    # Used to verify a phone number's ownership. After you have received a SMS
    # or Voice request code for verification, you need to verify the code that
    # was sent to you.
    # @param [String] phone_number_id Required parameter: Example:
    # @param [String] code Required parameter: The code you received after
    # calling FROM_PHONE_NUMBER_ID/request_code.
    # @return [SuccessResponse] response from the API call
    def verify_code(phone_number_id,
                    code)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/{Phone-Number-ID}/verify_code',
                                     Server::DEFAULT)
                   .template_param(new_parameter(phone_number_id, key: 'Phone-Number-ID')
                                    .should_encode(true))
                   .form_param(new_parameter(code, key: 'code'))
                   .header_param(new_parameter('application/x-www-form-urlencoded', key: 'content-type'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('global')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(SuccessResponse.method(:from_hash)))
        .execute
    end
  end
end