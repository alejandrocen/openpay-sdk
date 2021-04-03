# frozen_string_literal: true

class RequestTest < Minitest::Test
  def setup
    @client = HttpClientHelper.new
    @fixtures = YAML.load_file('test/fixtures.yml')
  end
end
