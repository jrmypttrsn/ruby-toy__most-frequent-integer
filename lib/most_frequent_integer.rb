# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
  counts = Hash.new 0
  	arr.each do |int|
  	counts[int] += 1
  end
  max = counts.values.max
  int_hash = Hash[counts.select {|x,y| y == max}]
	return nil if int_hash.length > 1
  int_hash.keys[0]
end

#find_most_frequent_integer([1, 2, 1, 1,])
#find_most_frequent_integer([1, 2, 3, 4])
find_most_frequent_integer([1, 1, 2, 3, 3])
