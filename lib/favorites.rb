module Favorites
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def favorite(finder, shortcuts)
      singleton = (class << self; self; end)

      shortcuts.each do |name, value|
        singleton.send(:define_method, name, lambda{ send("find_by_#{finder}", value) })
      end
    end
  end
end
