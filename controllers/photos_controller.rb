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
  size: "L",
  colour: "Black",
  material:"Nylon"
},
{
  id:3,
  title: "Extra Large shirt",
  size: "XL",
  colour: "Black",
  material:"Elastic"
}
]


get '/' do
  id = params[:id].to_i
  @id = id
  @previous = id - 1
  @next = id + 1
  @shirt = shirts[id]
erb :'./photos/index'
end

get '/:id' do
  id = params[:id].to_i
  @id = id
  @previous = id - 1
  @next = id + 1
  @shirt = shirts[id]
  erb :'./photos/show'

end

end
