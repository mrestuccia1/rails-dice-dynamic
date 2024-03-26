class RollController < ApplicationController
  def home
    render({:layout => "index"})
  end

  def execute 
    @rolls = params['rolls']
    @sides = params['sides']
    @outcomes = []

    for i in (1..@rolls)
      @outcomes.push(rand(1..@sides))
    end

    render({:layout => 'dice_result'})
  end
end
