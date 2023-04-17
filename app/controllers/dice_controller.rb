class DiceController < ApplicationController

  def infinity_and_beyond
    @array_of_rolls = Array.new
    @first = params.fetch(:first_num).to_i
    @second = params.fetch(:second_num).to_i

    @first.times do
      new_num = rand(1..@second)

      @array_of_rolls.push(new_num)

    end

    render({:template => "dice_templates/infinity.html.erb"})
  end

  
end
