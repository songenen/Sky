require 'rails_helper'
require 'rspec_api_documentation/dsl'

resource "Orders" do
  post "/api/v1/validation_codes" do
    example "发送验证码" do
      do_request

      expect(status).to eq 400
    end
  end
end