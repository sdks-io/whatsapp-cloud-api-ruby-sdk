Gem::Specification.new do |s|
  s.name = 'sdksio-whatsapp-cloud-api-sdk'
  s.version = '1.0.0'
  s.summary = 'SDK for using whatsapp cloud api'
  s.description = 'Use cloud-hosted version of the WhatsApp Business API to send and receive messages'
  s.authors = ['developer-sdksio']
  s.email = ['developer+sdksio@apimatic.io']
  s.homepage = 'https://www.apimatic.io/apidocs/whatsapp-api/v/1_0#/ruby'
  s.licenses = ['MIT']
  s.metadata  = {
}
  s.post_install_message = 'package installed successfully'

  s.add_dependency('apimatic_core_interfaces', '~> 0.1.0')
  s.add_dependency('apimatic_core', '~> 0.2.0')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.0')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
