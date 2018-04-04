require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :new 
  end 

  post '/student' do 
    @student = Student.new(params[:student])

    @courses = params[:student][:courses].each do |course|
      Course.new(course)
    end 

    erb :student 

end
