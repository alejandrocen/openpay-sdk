# frozen_string_literal: true

require_relative '../../../test_helper'

class GetRequestTest < Minitest::Test
  def test_get_charges
    request = Openpay::Charges::GetRequest.new
    response = HttpClientHelper.new.execute(request)
    assert_equal(200, response.status)
  end
end
