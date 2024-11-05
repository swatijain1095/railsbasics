class HomeController < ApplicationController
  def index
    # render plain: "Hello, World!"
    message="<h1>Hello, World!</h1>"
    message+="<h2>Hello, World!</h2>"
    message+="<h3>Hello, World!</h3>"
    message+="<h4>Hello, World!</h4>"
    message+="<h5>Hello, World!</h5>"
    message+="<h6>Hello, World!</h6>"
    render html: message.html_safe
  end

  def getquerystringvalues
    message=""
    if params[:message]
      message+="<h1>Message is: " + params[:message] + "</h1>"
    else
      message+="<h1>You have not supplied any value for message</h1>"
    end
    if params[:country]
      message+="<h1>Country is: " + params[:country] + "</h1>"
    else
      message+="<h1>You have not supplied any value for country</h1>"
    end
  message+="<h1>Controller name is: "+ params[:controller] + "</h1>"
  message+="<h1>Action name is: "+ params[:action] + "</h1>"
render html: message.html_safe
end

def passdatatoviews
  @message="<h1>Hello, World!</h1>"
  @message+="<h2>Hello, World!</h2>"
  @message+="<h3>Hello, World!</h3>"
  @message+="<h4>Hello, World!</h4>"
  @message+="<h5>Hello, World!</h5>"
  @message+="<h6>Hello, World!</h6>"
end

def showdatetimeinfo
  @currenttime=DateTime.now
end

def conditionalrendering
  @data={
    "name": "Swati",
    "isVisible": true,
    "loggedIn": false,
    "countryCode": "IN",
    "workExperience": "5 years",
    "stateCode": nil
  }
end

def loopthrougharrays
  @Products=[]
  @Products.push({ "id": 1, "name": "Laptop", "price": 10000 })
  @Products.push({ "id": 2, "name": "Mobile", "price": 20000 })
  @Products.push({ "id": 3, "name": "Tablet", "price": 30000 })
  @Products.push({ "id": 4, "name": "Television", "price": 40000 })
  @Products.push({ "id": 5, "name": "Camera", "price": 50000 })
  @Products.push({ "id": 6, "name": "Watch", "price": 60000 })
end

def loadusers
  base_url="https://fakestoreapi.com/users"
  response=HTTParty.get(base_url)
  response.success? ? @users=response : @users=[]
end

def loadusers2
    base_url="https://fakestoreapi.com/users"
    response=HTTParty.get(base_url)
    response.success? ? @users=response : @users=[]
    @image="https://i.pravatar.cc"
end

def show_user_details
  redirect_to load_user_details_path(1)
end
def load_user_details
  id = params[:id].to_i

  if(id < 1 || id > 10)
    redirect_to load_user_details_path(1)
    return
  end

  response=HTTParty.get("https://fakestoreapi.com/users/#{id}")
  if response.success?
    @user=response
  end
end

end
