require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/student' do
    @student = Student.new(params[:student])

    params[:student][:courses].each do |course|
      Course.new(course)
    end

    @courses = Course.all

    erb :student
  end
end
