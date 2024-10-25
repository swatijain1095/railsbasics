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
end
