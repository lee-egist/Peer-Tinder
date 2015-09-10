class WelcomeController < ApplicationController
  def signup
    @bootcoder = Bootcoder.new
  end
end
