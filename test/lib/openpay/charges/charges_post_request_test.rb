# frozen_string_literal: true

require_relative '../../../test_helper'

class ChargesPostRequestTest < RequestTest
  def test_create_charge
    charge_params = @fixtures[:charge].merge(
      source_id: 'kwoytmpdy3ctqlyooi5f',
      order_id: SecureRandom.hex(20),
      device_session_id: '03QKX08AUPvoJyxY6PP0Xu9kC7Mabusw'
    )
    VCR.use_cassette('test_create_charge') do
      request = Openpay::Charges::PostRequest.new { |req| req.body = charge_params }
      response = @client.execute(request)
      assert_equal(200, response.status)
    end
  end
end
