module ApplicationHelper
  def link_to_name obj, method = nil
    if method
      link_to obj.send(method), obj rescue nil
    else
      link_to obj.name, obj rescue nil
    end
  end
end
