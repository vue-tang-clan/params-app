Rails.application.routes.draw do
  get "/query_params_url" => "params_examples#query_params_method"
  get "/segment_params_url/:this_part_is_a_variable" => "params_examples#segment_params_method"
  post "/body_params_url" => "params_examples#body_params_method"

  get "/name_url" => "params_examples#name_method"
  get "/guess_query_url" => "params_examples#guess_query_method"
  get "/guess_segment_url/:my_guess" => "params_examples#guess_query_method"
end
