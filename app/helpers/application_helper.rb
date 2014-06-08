module ApplicationHelper
  def hidden_div_if(condition, attributes = {}, &block)
    if condition
<<<<<<< HEAD
      attributes["style"] = "display: none"
=======
      attributes["style"] = "display:none;"
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
    end
    content_tag("div", attributes, &block)
  end
end
