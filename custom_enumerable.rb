# Custom enumerable module
module CustomEnumerable
  def map(&block)
    result = []
    each do |element|
      result << block.call(element)
    end
    result 
  end

  def find(&block)
    
  end
end