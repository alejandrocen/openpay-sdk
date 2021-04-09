# frozen_string_literal: true

class RequestTest < Minitest::Test
  def setup
    Openpay.environment = environment
    Openpay.timeout = 120
    @fixtures = YAML.load_file('test/fixtures.yml')
  end

  private

  def environment
    Openpay::SandboxEnvironment.new(ENV['CLIENT_ID'], ENV['CLIENT_SECRET'])
  end
end
