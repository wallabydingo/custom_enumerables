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

  
  def my_all?(pattern=nil, &block)
    i = 0
    if block_given? 
      until i === self.length do
        if yield self[i]
          i += 1
        else
          false
          exit
        end
      end
      true
      exit
    end
    unless pattern.nil?
      until i === self.length do
        case self[i]
        in ^pattern
          true
          i += 1
        else
          false
          exit
        end
      end
      true
      exit
    end
    until i === self.length do
      if !self[i]
        false
        exit
      end
      true
      i += 1
    end
  end

  def my_any?(pattern=nil, &block)
    i = 0
    if block_given? 
      until i === self.length do
        if yield self[i]
          true
          exit
        else
          i += 1
        end
      end
      false
      exit
    end
    unless pattern.nil?
      until i === self.length do
        case self[i]
        in ^pattern
          true
          exit
        else
          i += 1
        end
      end
      false
      exit
    end
    until i === self.length do
      if self[i]
        true
        exit
      end
      false
      i += 1
    end
  end

  def my_none?(pattern=nil, &block)
    i = 0
    if block_given? 
      until i === self.length do
        if yield self[i]
          false
          exit
        else
          i += 1
        end
      end
      true
      exit
    end
    unless pattern.nil?
      until i === self.length do
        case self[i]
        in ^pattern
          false
          exit
        else
          i += 1
        end
      end
      true
      exit
    end
    until i === self.length do
      if self[i]
        false
        exit
      end
      true
      i += 1
    end
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
