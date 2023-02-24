def first_anagram?(sentence_1, sentence_2)
    parts_2 = sentence_2.split("")
    parts = sentence_1.split("")
    arr = parts.permutation(sentence_1.length).to_a

    # p arr
    return arr.include?(parts_2)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(sentence_1, sentence_2)
    parts = sentence_2.split("")

    sentence_1.each_char do |char|
        parts.delete(char)
    end

    # p parts
    parts.length == 0
end

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

# The difference between first_anagram and second_anagram is we are not itinerate through the sentences

def third_anagram?(sentence_1, sentence_2)
    sorted_1 = sentence_1.chars.sort
    sorted_2 = sentence_2.chars.sort

    sorted_1 == sorted_2
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(sentence_1, sentence_2)
    my_hash_1 = Hash.new(0)
    my_hash_2 = Hash.new(0)

    sentence_1.each_char do |char|
        my_hash_1[char] += 1
    end

    sentence_2.each_char do |char|
        my_hash_2[char] += 1
    end

    my_hash_1 == my_hash_2
end

# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true


# BONUS SOLUTION
def fifth_anagram?(sentence_1, sentence_2)
    my_hash_1 = Hash.new(0)

    sentence_1.each_char do |char|
        my_hash_1[char] += 1
    end

    sentence_2.each_char do |char|
        my_hash_1[char] -= 1
    end

    my_hash_1.all? {|k,v| v == 0 }
end

p fifth_anagram?("gizmo", "sally")    #=> false
p fifth_anagram?("elvis", "lives")    #=> true
