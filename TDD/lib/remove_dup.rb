require 'byebug'
class Array 
  def my_uniq 
    result = []
    each do |el|
      result << el unless result.include?(el)
    end
    result
  end 

  def two_sum 
    return nil if length < 2
    result = [] 
    each_with_index do |el, i|
      each.each_with_index do |jl, j|
        result << [i, j].sort if el + jl == 0 unless j == i
      end 
    end 
    result.uniq
  end 
  
end  

def my_transpose(matrix)
  result = Array.new(matrix[0].length) {Array.new}
  (0...matrix.length).each do |jdx|
    matrix.each_with_index do |el, idx|
      result[jdx] << matrix[idx][jdx]
    end
  end
  result
end

def stock_pick(array)
  return nil if array.length < 2
  max_diff = [0, 1] 
  
  array.each_with_index do |el, i|
    array.each.each_with_index do |jl, j|
      if ( jl - el > array[max_diff[1]] - array[max_diff[0]] ) && (i != j)
        max_diff = [i, j]
      end 
    end 
  end
    return nil if array[max_diff[1]] - array[max_diff[0]] < 0
    max_diff
  end 
  



