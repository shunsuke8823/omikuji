class ResultsController < ApplicationController
  def show
    fortunes = ["大吉", "中吉", "小吉", "末吉", "吉"]
    @result = fortunes.sample
  end
end
