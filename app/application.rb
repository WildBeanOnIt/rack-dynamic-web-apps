class Application

  def call(env)
    resp = Rack::Response.new
    
    num_1 = Kernel.round(1..20)
    num_2 = Kernel.round(1..20)
    num_3 = Kernel.round(1..20)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"
    
    if num_1 == num_2 && num_2 == num_3
      resp.Write "You Win"
    else
      resp.Write "You loose"
    end
    
    resp.finish
  end
    
  

end