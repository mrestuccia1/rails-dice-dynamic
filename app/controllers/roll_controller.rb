class RollController < ApplicationController
  def index
    render({ :layout => "roll/index"})
  end

  def execute 
    @rolls = params['rolls'].to_i
    @sides = params['sides'].to_i
    @outcomes = []

    for i in (1..@rolls)
      @outcomes.push(rand(1..@sides))
    end

    render({ :layout => 'roll/dice_result'})
  end
end
