require "sinatra"
require "mandrill"

# from #{params[:first_name]}
#      #{params[:last_name]}
#      #{params[:email]}
#      #{params[:codingclass]}

get "/sent" do
	m = Mandrill::API.new
	message = {
		:subject=> "Hello from the Mandrill API",
		:from_name=> "Your name",
		:text=>"Hi message, how are you?",
		:to=>[
			{
				:email=> "swagner2001@mac.com",
				:name=> "HerrWagner"
				}
			],
			:html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",
			:from_email=>"herrwagner1680@gmail.com"
	}
		sending = m.messages.send message
		puts sending

		erb :sent
end

get '/' do 

	erb :index
end

get '/contact' do
	erb :contact
end

# get '/portfolio' do
# 	erb :portfolio
# end

get '/about_us' do
	erb :about_us
end

# post '/sign-in' do
# 	puts params.inspect
# end
