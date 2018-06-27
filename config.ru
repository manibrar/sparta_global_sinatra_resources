require 'sinatra'
require 'sinatra/contrib'
require_relative './controllers/photos_controller.rb'

run PhotosController
