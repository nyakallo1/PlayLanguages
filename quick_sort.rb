class QuickSort
  def QuickSort.sort_array(arr=[])
    arr.length>2 ?  (return divide_ByPivot(arr)) : ((arr[arr.length-2]<=> arr[arr.length-1])==1 ? (arr[0],arr[1]=arr[1],arr[0]) :(return arr))
  end
  def QuickSort.divide_ByPivot(arr=[])
    a=arr.find_all{|item| item < arr[arr.length/2]};b=arr.find_all{|item| item > arr[arr.length/2]}
    a=a.length==1 ? a.push(arr[arr.length/2]): sort_array(a).push(arr[arr.length/2]); b.length==1 ? a.concat(b): a.concat(sort_array(b))
  end
  puts "#{sort_array(Array(100.downto(1)))}"
  puts "#{sort_array(Array["Many", "functional", "languages", "are", "tied", "to", "mathematical", "calculation", "tools"])}"
end




