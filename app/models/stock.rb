class Stock < ApplicationRecord
    has_many :user_stocks
    has_many :users, through: :user_stocks
    
    validates :name, :ticker , presence: true
    
        def self.new_lookup(ticker_symbol)
            client = IEX::Api::Client.new(
                publishable_token: 'Tpk_16be1aaef91a4fa29e6286ed5f6e2cb5',
                endpoint: 'https://sandbox.iexapis.com/v1')
            new(ticker: ticker_symbol, name: client.company(ticker_symbol).company_name, price:client.price(ticker_symbol))
            
        end
    end