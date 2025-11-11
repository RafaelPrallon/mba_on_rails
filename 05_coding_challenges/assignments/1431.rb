def kids_with_candies(candies, extra_candies)
  greatest = candies.max
  candies.map { |candy| candy + extra_candies >= greatest }
end
