# whats_app_cloud_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module WhatsAppCloudApi
  #  whats_app_cloud_api client class.
  class Client
    attr_reader :config, :auth_managers

    # Access to messages controller.
    # @return [MessagesController] Returns the controller instance.
    def messages
      @messages ||= MessagesController.new @global_configuration
    end

    # Access to registration controller.
    # @return [RegistrationController] Returns the controller instance.
    def registration
      @registration ||= RegistrationController.new @global_configuration
    end

    # Access to business_profiles controller.
    # @return [BusinessProfilesController] Returns the controller instance.
    def business_profiles
      @business_profiles ||= BusinessProfilesController.new @global_configuration
    end

    # Access to media controller.
    # @return [MediaController] Returns the controller instance.
    def media
      @media ||= MediaController.new @global_configuration
    end

    # Access to phone_numbers controller.
    # @return [PhoneNumbersController] Returns the controller instance.
    def phone_numbers
      @phone_numbers ||= PhoneNumbersController.new @global_configuration
    end

    # Access to two_step_verification controller.
    # @return [TwoStepVerificationController] Returns the controller instance.
    def two_step_verification
      @two_step_verification ||= TwoStepVerificationController.new @global_configuration
    end

    def initialize(connection: nil, adapter: :net_http_persistent, timeout: 60,
                   max_retries: 0, retry_interval: 1, backoff_factor: 2,
                   retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
                   retry_methods: %i[get put], http_callback: nil,
                   environment: Environment::PRODUCTION, version: 'v13.0',
                   access_token: '', config: nil)
      @config = if config.nil?
                  Configuration.new(connection: connection, adapter: adapter,
                                    timeout: timeout, max_retries: max_retries,
                                    retry_interval: retry_interval,
                                    backoff_factor: backoff_factor,
                                    retry_statuses: retry_statuses,
                                    retry_methods: retry_methods,
                                    http_callback: http_callback,
                                    environment: environment, version: version,
                                    access_token: access_token)
                else
                  config
                end

      @global_configuration = GlobalConfiguration.new(client_configuration: @config)
                                                 .base_uri_executor(@config.method(:get_base_uri))
                                                 .global_errors(BaseController::GLOBAL_ERRORS)
                                                 .user_agent(BaseController.user_agent)
                                                 .sdk_module(WhatsAppCloudApi)

      initialize_auth_managers(@global_configuration)
      @global_configuration = @global_configuration.auth_managers(@auth_managers)
    end

    # Initializes the auth managers hash used for authenticating API calls.
    # @param [GlobalConfiguration] global_config The global configuration of the SDK)
    def initialize_auth_managers(global_config)
      @auth_managers = {}
      http_client_config = global_config.client_configuration
      ['global'].each { |auth| @auth_managers[auth] = nil }
      @auth_managers['global'] = OAuth2.new(http_client_config.access_token)
    end
  end
end