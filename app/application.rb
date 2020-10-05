require 'rack'

class Application

    def call(env)
      resp = Rack::Response.new
  
        time=Time.now.hour
        
  
      if time >= 12
      resp.write "Good Afternoon!"
      else
      resp.write "Good Morning!"
      end
      
        resp.finish
    end
  
  end

#   require 'rack'

# # Something that responds to call, that's what Rack demands
# class MyServer
#   def call(env)
#     return [ 200, {'Content-Type' => 'text/html'}, pretty_response ]
#   end

#   def pretty_response
#     (Time.now.to_i % 2).zero? ?  ["Hello"] : ["Hello"]
#   end
# end

# run MyServer.new 