class PortController < ApplicationController
    def search
      @stock=Stock.new_lookup(params[:stock])
      render 'my_holdings/holdings'
  end
end
