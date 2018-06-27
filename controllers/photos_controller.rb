class PhotosController < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), '..')
  set :views, Proc.new { File.join(root, "views")}

  configure :development do
  register Sinatra::Reloader
end

shirts = [
  {
  id:0,
  title: "Extra small shirt",
  size: "XS",
  colour: "White",
  material:"Plaid"
},
{
  id:1,
  title: "Small shirt",
  size: "S",
  colour: "Blue",
  material:"Denim"
},
{
  id:2,
  title: "Medium shirt",
  size: "M",
  colour: "Red",
  material:"Silk"
},
{
  id:3,
  title: "Large shirt",
  size: "xs",
  colour: "Black",
  material:"Nylon"
}
]


get '/' do
erb :'./photos/index'
end

get '/:id' do
  id = params[:id].to_i
  @shirt = shirts[id]
  "This is a #{@shirt[:title]}, tag size is #{@shirt[:size]}. The colour is #{@shirt[:colour]} and it's made from #{@shirt[:material]} "
  erb :'./photos/show'
end

end
