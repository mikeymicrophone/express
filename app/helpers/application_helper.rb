module ApplicationHelper
  def link_to_name obj, method = nil
    if method
      link_to obj.send(method), obj rescue nil
    else
      link_to obj.name, obj rescue nil
    end
  end
  
  def blueprints_links
    link_to('generate organization', 'build/org') + ' ' +
    link_to('generate office', 'build/off') + ' ' +
    link_to('generate election', 'build/elec') + ' ' +
    link_to('generate candidate', 'build/cand')
  end
end
