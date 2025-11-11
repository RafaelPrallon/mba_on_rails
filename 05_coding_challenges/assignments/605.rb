def can_place_flowers(flowerbed, n)
  count = 0
  flowerbed.each_with_index do |plot, i|
    if plot.zero?
      empty_left_plot = i.zero? || flowerbed[i-1].zero?
      empty_right_plot = (i == flowerbed.length - 1) || flowerbed[i + 1].zero?
      if empty_left_plot && empty_right_plot
        flowerbed[i] = 1
        count += 1
        return true if count >= n
      end
    end
  end
  count >= n
end
