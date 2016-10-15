def sort(original)
  sorted = []
  original.each do |original_num|
    if sorted.empty? || original_num > sorted.last
      sorted << original_num
      next
    else
      sorted.each do |sorted_num|
        if original_num <= sorted_num
          sorted.insert(sorted.index(sorted_num), original_num)
          break
        end
      end
    end
  end
  sorted
end


sort(['abc', 'c', 'a', 'b'])
sort([5,1,2,7,3,0,1,2,5])
