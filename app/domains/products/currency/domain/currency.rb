class Products::Currency::Domain::Currency
  attr_reader :code

  def initialize(code)
    if code.nil?
      raise ArgumentError, 'Currency code cannot be nil'
    end

    @code = code
  end
end
