require 'rails_helper'

RSpec.configure do |config|
  config.swagger_root = "#{Rails.root}/swagger"
  config.swagger_docs = {
    'api/swagger_admin_doc.json' => {
      swagger: '2.0',
      info: {
        title: 'API documentation for Admin users',
        version: 'v1'
      },
      paths: {},
      securityDefinitions: {
        basic: {
          type: :basic
        },
        apiKey: {
          type: :apiKey,
          name: 'api_key',
          in: :query
        }
      }
    },
    'api/swagger_doc.json' => {
      swagger: '2.0',
      info: {
        title: 'API documentation for usual users',
        version: 'v1'
      },
      paths: {}
    }
  }
end
