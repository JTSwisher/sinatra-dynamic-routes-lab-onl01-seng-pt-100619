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
  
  #Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a #single string the number of times given.
  
  get '/say/:number/:phrase' do 
    string = ''
    params[:number].to_i.times do 
      string += params[:phrase]
    end 
    string
  end 

#Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string #containing all five words 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 


  #Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided, returning a String

  get '/:operation/:number1/:number2' do 
    string = ''
    value = params[:number1].to_i params[:operation] params[:number2].to_i
    string << value
    string
  end 
  
  
end