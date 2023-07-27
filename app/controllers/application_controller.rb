
class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/products" do
    products = Product.all
    products.to_json
  end

  get "/products/:id" do
    product = Product.find(params[:id])
    product.to_json
  end
  post '/products' do
    product = Product.create(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      category_id: params[:category_id]
    )
    if product.save
      product.to_json
    else
      { message: "Unable to create product" }.to_json
    end
  end

  put "/products/:id" do
    product = Product.find(params[:id])
    if product.update(name: params[:name], price: params[:price], image: params[:image])
      { message: "Product updated successfully" }.to_json
    else
      { message: "Unable to update" }.to_json
    end
  end

  delete "/products/:id" do 
    product = Product.find(params[:id])
    if product.destroy
      { message: "Product deleted" }.to_json
    else
      { message: "Unable to delete" }.to_json
    end
  end

  patch "/products/:id" do
    product = Product.find(params[:id])
    product.name = params[:name] if params[:name]
    product.price = params[:price] if params[:price]
    product.image = params[:image] if params[:image]

    if product.save
      { message: "Product updated successfully" }.to_json
    else
      { message: "Unable to update" }.to_json
    end
  end

  get '/categories' do
  categories = Category.all
  categories.to_json(include: :products)
end

  get "/categories/:id/products" do
    category = Category.find(params[:id])
    products = category.products
    products.to_json
  end

  post '/categories' do
    category = Category.create(name: params[:name])
    category.to_json
  end

  put "/categories/:id" do
    category = Category.find(params[:id])
    if category.update(name: params[:name])
      { message: "Category updated successfully" }.to_json
    else
      { message: "Unable to update category" }.to_json
    end
  end

  delete "/categories/:id" do 
    category = Category.find(params[:id])
    if category.destroy
      { message: "Category deleted" }.to_json
    else
      { message: "Unable to delete category" }.to_json
    end
  end
end