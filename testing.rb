class ParentClass 
  attr_accessor :vall, :val2

  def initialize(a,b)
    # raise "Here!"
    @val1 = a
    @val2 = b
  end
end

class Derived < ParentClass
  attr_accessor :a, :b
  def initialize
    @a = "This is a default message for a"
    @b = "This a"
    super(@a,@b)
  end

  def a_val
    @a
  end

  def b_val
    @b
  end
end