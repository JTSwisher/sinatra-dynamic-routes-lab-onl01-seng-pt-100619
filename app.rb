require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

#create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.
  get '/reversename/:name' do 
    @user_name = params[:name] 
    "#{@user_name.reverse}"
  end 

#Create a dynamic route at get '/square/:number' that accepts a number and returns the square of that number.  
  get '/square/:number' do 
    @squared_number = params[:number].to_i ** 2
    "#{@squared_number}"
  end 
  
  
  get '/say/:number/:phrase' do 
    string = ''
    params[:number].to_i.times do 
      string += params[:phrase]
    end 
    string
  end 







end