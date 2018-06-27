class ParamsExamplesController < ApplicationController
  def query_params_method
    input_name = params["my_name"]
    @output_message = "Your name is #{input_name}"
    @another_message = "The color is #{params["color"]}"
    render "query_params.json.jbuilder"
  end

  def name_method
    input_name = params["name"]
    upcased_name = input_name.upcase
    @message = "Your name is #{upcased_name}"
    if upcased_name.starts_with?("A")
      @message = @message + " (your name starts with a btw)"
    end
    render "name.json.jbuilder"
  end

  def guess_query_method
    winning_number = 32
    input_guess = params["my_guess"].to_i
    if input_guess > winning_number
      @output_message = "Pick lower!"
    elsif input_guess < winning_number
      @output_message = "Pick higher!"
    else
      @output_message = "You win!"
    end
    render "guess_query.json.jbuilder"
  end
end
