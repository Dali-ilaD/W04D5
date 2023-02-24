

# def my_min(arr)
#     first_ele = arr[0]
#     arr.each do |ele|
#         if ele < first_ele
#             first_ele = ele
#         end
#     end
#     first_ele
# end
# time complexity = linear
# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# def my_min(arr)
#     first_ele = arr[0]
#    arr.each do |ele|
#        arr.each do |ele2|
#             if ele2 < first_ele
#                 first_ele = ele2
#             end
#         end
#     end
#     first_ele
# end
# time complexity = quadratic
# p my_min(list)  # =>  -5


# def sub_sum(arr)
#     sub_sums = []

#     (0...arr.length).each do |num|
#         (num+1...arr.length).each do |num2|
#             new_arr = [arr[num],arr[num2]]
#             sub_sums << new_arr
#         end
#     end
#     max_sum = 0
#     max_arr = []
#     sub_sums.each do |sub_arr|
#         curr_sum = sub_arr.sum
#         if curr_sum > max_sum
#             max_sum = curr_sum
#             max_arr = sub_arr
#         end
#     end
    
#     max_sum && max_arr
# end

def sub_sum(arr)
    arr_sums = []
    # hash = {}

    (0...arr.length-1).each do | i|
        first_ele = arr[i]
        second_ele = arr[i+1]

        sum_arr = [first_ele,second_ele]
        sum = first_ele + second_ele
        arr_sums << sum

        # hash[sum] = sum_arr

    end
    
    arr_sums.max
end

# list = [5, 3, -7]
# p sub_sum(list)