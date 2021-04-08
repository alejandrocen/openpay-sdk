# frozen_string_literal: true

class RequestTest < Minitest::Test
  def setup
    @client = Openpay::Client.new(environment)
    @fixtures = YAML.load_file('test/fixtures.yml')
  end

  private

  def environment
    Openpay::SandboxEnvironment.new(ENV['CLIENT_ID'], ENV['CLIENT_SECRET'])
  end
end
