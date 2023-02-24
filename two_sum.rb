


# def bad_two_sum?(arr, target)
#     sums_arr = []

#     arr.each_with_index do |num1, i|
#         arr.each_with_index do |num2, j|
#             if num1 + num2 == target && j > i 
#                 sum = num1 + num2
#                 sums_arr << sum
#             end
#         end
#     end
#     !sums_arr.empty?
# end

# arr = [0, 1, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false


# def okay_two_sum?(arr,target)
#     sorted = arr.sort!

#     sorted.each_with_index do |num1, i|
#         sorted.each_with_index do |num2, j|
#             if num1 + num2 == target && j > i 
#                 return true
#             end
#         end
#     end
#             false
# end

# arr = [0, 1, 5, 7]
# p okay_two_sum?(arr, 6) # => should be true
# p okay_two_sum?(arr, 10) # => should be false


def two_sum(arr,target)

    hash = {}

    arr.each do |num|
        var = target - num
        if hash.has_key?(var)
            return true
        else
            hash[num] = true
        end
    end
    false
end

arr = [0, 1, 5, 7]
p two_sum(arr, 6) # => should be true
p two_sum(arr, 10) # => should be false