# frozen_string_literal: true

require_relative '../../test_helper'

class EnvironmentTest < Minitest::Test
  def test_sandbox_url_api
    api_url = Openpay::SandboxEnvironment.new(ENV['CLIENT_ID'], ENV['CLIENT_SECRET']).api_url
    assert_equal 'https://sandbox-api.openpay.mx/v1/', api_url, 'Should return sandbox url api'
  end

  def test_live_url_api
    api_url = Openpay::LiveEnvironment.new(ENV['CLIENT_ID'], ENV['CLIENT_SECRET']).api_url
    assert_equal 'https://api.openpay.mx/v1/', api_url, 'Should return live url api'
  end
end
