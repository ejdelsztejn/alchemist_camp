def snail(matrix)
  snailified = []
  round = 0
  until snailified == matrix.count**2
    matrix[round][round..-(round + 1)].each do |n|
      snailified << n
    end
    index = 0
    count = index
    current_array = matrix[round + index]
    loop do
      require "pry"; binding.pry
      snailified << current_array[-index]
      count += 1
      current_array = matrix[round + count]
      break if current_array = matrix[-(round + 1)]
    end
    index = -(round + 2)
    current_array = matrix[-(round + 1)]
    loop do
      snailified << current_array[index]
      break if current_array[index] == current_array.first
      index -= 1
    end
    index = round
    count = index
    current_array = matrix[-(round + 2)]
    loop do
      snailified << current_array[index]
      current_array = matrix[round + (index + 1)]
      count += 1
      break if count == round + 1
    end
    round += 1
  end
  snailified
end

arrayMatrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
snail(arrayMatrix)
