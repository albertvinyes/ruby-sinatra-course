class IntegerInString < String
  def initialize( s )
    raise ArgumentError, "The string '#{s}' is not an integer in a string, it's just a string." unless s =~ /^\-?[0-9]+$/
    super
  end
end
