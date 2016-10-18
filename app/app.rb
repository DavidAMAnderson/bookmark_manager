require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/add'
  end

  post '/links' do
    Link.create(title: params[:Title], url: params[:URL])
    redirect '/links'
  end

  run! if app_file == $0
end
