# This is binary search  (recursive)
# It is implemented like method of the standart Array class

class Array
  
  def binary_search(val, left = 0, right = nil)
  
  right = self.size unless right
  mid = (left + right) / 2

  return nil if left > right
  
    if val == self[mid]
      return mid
    elsif val > self[mid]
      binary_search(val, mid + 1, right)
    else
      binary_search(val, left, mid - 1)
    end
  end
end  
