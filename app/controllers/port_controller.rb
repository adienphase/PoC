class PortController < ApplicationController
  def create
    stock = Stock.new_lookup(params[:ticker])
    #stock.save
    @user_stk = MyStock.create(ticker: params[:ticker], name: stock.name, buy_price: params[:buy_price], quantity: params[:quantity])
    flash[:notice] = "#{stock.ticker} was successfully added to portfolio"
    redirect_to my_holdings_holdings_path
  end
  def destroy
    #stock = Stock.find(params[:id])
    stock=MyStock.find(params[:format]).ticker
    user_stock = MyStock.find(params[:format])
    user_stock.destroy
    flash[:notice] = " #{stock} was successfully removed from portfolio"
    redirect_to my_holdings_holdings_path
  end
end
