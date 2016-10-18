require 'sinatra/base'
require_relative 'models/link'
require_relative 'data_mapper_setup'

ENV['RACK_ENV'] ||= "development"

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/add'
  end

  post '/links' do
    link = Link.new(title: params[:Title], url: params[:URL])
    tag = Tag.first_or_create(name: params[:Tags])
    link.tags << tag
    link.save
    redirect to '/links'
  end

  run! if app_file == $0
end
