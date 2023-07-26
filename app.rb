require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

# Square number routes
get('/square/new') do

  erb(:square)
end

get('/square/results') do

  erb(:square_results)
end

# Square root number routes
get('/square_root/new') do

  erb(:square_root)
end

get('/square_root/results') do

  erb(:square_root_results)
end

# Payment routes
get('/payment/new') do

  erb(:payment)
end

get('/payment/results') do
  n = params.fetch('user_years').to_i * 12
  apr = params.fetch('user_apr').to_f / 100
  r = apr / 12

  @numerator = r * params.fetch('user_pv').to_i
  @denominator = 1 - ((1 + r) ** -n)

  erb(:payment_results)
end

# Random routes
get('/random/new') do

  erb(:random)
end

get('/random/results') do

  erb(:random_results)
end
