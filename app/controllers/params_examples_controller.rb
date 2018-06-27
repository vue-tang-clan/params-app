class ParamsExamplesController < ApplicationController
  def query_params_method
    input_name = params["my_name"]
    @output_message = "Your name is #{input_name}"
    @another_message = "The color is #{params["color"]}"
    render "query_params.json.jbuilder"
  end
end
