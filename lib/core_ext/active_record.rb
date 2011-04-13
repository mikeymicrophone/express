module ActiveRecord
  class Base
    def self.map_name_and_id method = nil
      if method
        all.map { |o| [o.send(method), o.id] }
      else
        all.map { |o| [o.name, o.id] } rescue nil#if first.respond_to?(:name) && first.respond_to?(:id)
      end
    end
  end
end