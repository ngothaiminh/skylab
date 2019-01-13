class BubbleSortService
  attr_reader :array

  def initialize array
    @array = array
  end

  def perform
    return array if array.size <= 1
    swapped = true
    while swapped do
      swapped = false
      0.upto(array.size-2) do |i|
        if array[i] > array[i+1]
          array[i], array[i+1] = array[i+1], array[i]
          swapped = true
        end
      end
    end
    array
  end
end
