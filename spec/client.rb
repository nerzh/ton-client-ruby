require 'spec_helper'



describe TonClient::Client do
  before(:all) do
    @client = make_client
  end

  it 'create client' do
    client = TonClient.create(config: {network: {server_address: "net.ton.dev"}})
    expect(client.context.id).to be_a(0.class)
  end

  it 'destroy context' do
    client = TonClient.create(config: {network: {server_address: "net.ton.dev"}})
    expect(client.destroy_context).to be_a(nil.class)
  end

  it 'check version' do
    callLibraryMethodSync(@client.method(:version)) do |response|
      expect(response.first.result['version']).to be_a(String)
    end
  end

  it 'get_api_reference' do
    callLibraryMethodSync(@client.method(:get_api_reference)) do |response|
      expect(response.first.result['api']).to be_a(Hash)
    end
  end
end

