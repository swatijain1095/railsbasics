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
end
