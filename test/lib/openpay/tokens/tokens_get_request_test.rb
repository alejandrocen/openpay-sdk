# frozen_string_literal: true

require_relative '../../../test_helper'

class ChargesGetRequestTest < RequestTest
  def test_get_token
    VCR.use_cassette('test_get_token') do
      request = Openpay::Tokens::GetRequest.new('krnsmcqqypsft2xeftqt')
      response = @client.execute(request)

      assert_equal(200, response.status)
    end
  end
end
