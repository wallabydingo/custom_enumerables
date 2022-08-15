module Enumerable
  
  def my_each_with_index
    i = 0
    if block_given?
      until i === self.length do
        yield self[i], i
        i += 1
      end
    end
    self
  end

  def my_select
    i = 0
    arr_tmp = []
    if block_given?
      until i === self.length do
        if yield self[i]
          arr_tmp.push(self[i])
        end
      i += 1
      end
      arr_tmp
    else
      self
    end
  end

  def my_all?
    # testing git

  end

end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  def my_each
    i = 0
    if block_given?
      until i === self.length do
        yield self[i]
        i += 1
      end
    end
    self
  end
end
