def meets_criteria num
  criteria = {}
  (2..num).each do |i|
    criteria[i] = true
  end
  (2..(num/2)).each do |i|
    j = i + i
    while (j <= num) do
      criteria[j] = false
      j = j + i
    end
  end
  criteria.find_all{|c| c[1]}.map{|c| c[0]}
end

num = ARGV[0].to_i
meets_criteria(num).each do |i|
  puts "#{i} meets criteria"
end
