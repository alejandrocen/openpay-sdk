# frozen_string_literal: true

class HttpClientHelper
  extend Forwardable

  def_delegators :@client, :execute

  def initialize
    @client = Openpay::HttpClient.new(environment)
  end

  private

  def environment
    Openpay::SandboxEnvironment.new(ENV['CLIENT_ID'], ENV['CLIENT_SECRET'])
  end
end
