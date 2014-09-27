module WargamingApi::Concern::Attributable
  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      cattr_accessor :_attributes
      self._attributes = {}
    end
  end

  module ClassMethods
    def attribute(name, type)
      _attributes[name] = type
    end
  end

  def apply_type(name, value)
    case self._attributes[name.to_sym]
    when :datetime then Time.at(value)
    else
      value
    end
  end
end