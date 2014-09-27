class WargamingApi::Node
  include WargamingApi::Concern::Attributable

  # Shared
  attribute :created_at, :datetime
  attribute :updated_at, :datetime

  # Accounts
  attribute :last_battle_time, :datetime
  attribute :logout_at, :datetime

  # Clans
  attribute :time, :datetime
  attribute :prime_time, :datetime
  attribute :since, :datetime

  # Global War
  attribute :start_time, :datetime
  attribute :finish_time, :datetime
  attribute :start_at, :datetime

  attr_reader :node

  def initialize(node)
    case node
    when Array then initialize_as_array(node)
    when Hash then initialize_as_hash(node)
    end
  end

  def initialize_as_array(array)
    @node = define_array(array)
    self.singleton_class.include Enumerable
    self.define_singleton_method(:each) do |&blk| 
      @node.each(&blk)
    end
    self.define_singleton_method(:[]) do |value|
      @node[value]
    end
  end

  def initialize_as_hash(hash)
    if hash.keys.any? { |key| key =~ /[A-Z\d]+/ && hash[key].is_a?(Hash) }
      initialize_as_array(hash.values)
    elsif hash.keys.any? { |key| key =~ /[A-Z\d]+/ && hash[key].is_a?(Array) }
      initialize_as_array(hash.values)
    else
      initialize_attributes(hash)
    end
  end

  def define_array(array)
    array.map { |hash| WargamingApi::Node.new(hash) }
  end

  def initialize_attributes(hash)
    @node = hash
    @node.keys.each do |attribute|
      define_singleton_method(attribute) do
        case @node[attribute]
        when Array then WargamingApi::Node.new(@node[attribute])
        when Hash then WargamingApi::Node.new(@node[attribute])
        else apply_type(attribute, @node[attribute])
        end
      end
    end
  end

end