
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

 post '/posts' do
   Post.create(params)
   puts @posts = Post.all
   erb :index
 end

 get '/posts' do
   @posts = Post.all
   erb :index
 end


  get '/posts/new' do
    erb :new
  end
end
