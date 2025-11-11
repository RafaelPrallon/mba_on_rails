def product_except_self(nums)
  n = nums.length
  results = Array.new(n, 1)
  part_prod = 1

  (0...n).each do |i|
    results[i] = part_prod
    part_prod *= nums[i]
  end

  part_prod = 1

  (n - 1).downto(0) do |i|
    results[i] *= part_prod
    part_prod *= nums[i]
  end

  results
end
