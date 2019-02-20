require 'pry'

class Application
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
  
    if req.path.match(/items/) != nil
      search_param = req.path.split("/items/").last
      item = Item.all.select { |item| item.name == search_param}
<<<<<<< HEAD
      #binding.pry
      if item.count > 0 
        resp.write item.first.price
      else
        resp.status = 400
        resp.write "Item not found"
      end
    else
      resp.status = 404
=======
      binding.pry
      if item != nil
        item.price
      else
        resp.write "Item not found"
      end
    else
>>>>>>> 38b2a326f352d79c7f55fa4d7ad019fbad8c845d
      resp.write "Route not found"
    end
    
    #binding.pry
    
    resp.finish
  end


  
end