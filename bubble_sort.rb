def bubble_sort(array)
  result = array
  while result.each_cons(2).any? {|x,y| x > y} 
    for i in (0..result.length - 2)
        result[i],result[(i + 1)] = result[(i + 1)], result[i] if result[i] > result[(i + 1)]
    end     
  end
  result
end

def bubble_sort_by(array)
  result = array
  while result.each_cons(2).any? {|x,y| yield(x,y) > 0} 
    for i in (0..result.length - 2)
        result[i],result[(i + 1)] = result[(i + 1)], result[i] if yield(result[i], result[(i + 1)]) > 0 
    end     
  end
  result
end
