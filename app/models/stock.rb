class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
  client = IEX::Api::Client.new(
    publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
    secret_token: 'Tpk_698fdc9e7adc4bb0b8636fd6a7f79a2d',
    endpoint: 'https://sandbox.iexapis.com/v1')
    new(ticker: ticker_symbol, name: client.company(ticker_symbol).company_name, last_price: client.price(ticker_symbol))

  end

end

