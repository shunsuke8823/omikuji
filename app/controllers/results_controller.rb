class ResultsController < ApplicationController
  def show
    fortunes = {
        "大吉" => "daikichi",
        "中吉" => "chukichi",
        "小吉" => "shoukichi",
        "末吉" => "suekichi",
        "吉" => "kichi"
    }
    @result = fortunes.keys.sample
    @result_class = fortunes[@result]
  end
end
