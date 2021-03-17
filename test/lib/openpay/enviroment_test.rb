# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../../../lib/openpay/enviroment'

class EnviromentTest < Minitest::Test
  def test_sandbox_url_api
    api_url = Openpay::SandboxEnvironment.new('mu3ovyu0u17ibmil6rob', 'sk_84b0b9d3f9d0450681c8130c360fe112').api_url
    assert_equal 'https://sandbox-api.openpay.mx/v1/', api_url, 'Should return sandbox url api'
  end

  def test_live_url_api
    api_url = Openpay::LiveEnvironment.new('mu3ovyu0u17ibmil6rob', 'sk_84b0b9d3f9d0450681c8130c360fe112').api_url
    assert_equal 'https://api.openpay.mx/v1/', api_url, 'Should return live url api'
  end
end
