require_relative 'config/environment'
require_relative 'models/puppy.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/student' do
    @student = Student.new(params[:student])
   
    params[:student][:courses].each do |details|
      Course.new(details)
    end
   
    @courses = Course.all
   
    erb :student
  end

end
