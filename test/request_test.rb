# frozen_string_literal: true

class RequestTest < Minitest::Test
  def setup
    @client = HttpClientHelper.new
  end
end
