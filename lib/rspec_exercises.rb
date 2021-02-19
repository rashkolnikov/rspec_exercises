# The operation of each method is explained in the file that end as "nameOfThisFile_spec.rb"

def average(num1, num2)
    (num1 + num2) / 2.0
end



def average_array(arr)
    arr.sum / (arr.length * 1.0)
end



def repeat(str, num)
    str * num
end



def alternating_case(sentence)
    words = sentence.split(" ")

    new_sentence = words.map.with_index{ |word, idx| 
        if idx % 2 == 0
            word.upcase
        else
            word.downcase
        end
    }

    new_sentence.join(" ")
end



def hipsterfy(word)

    vowels = "aeiou"
    
    i = word.length - 1

    while i >= 0
        if vowels.include?(word[i])
            return word[0...i] + word[i+1..-1]
        end 
        i-=1
    end

    word 
end



def vowel_counts(str)
    count = Hash.new(0)
    vowels = "aeiou"

    str.each_char{ |char|
        if vowels.include?(char.downcase)
            count[char.downcase]+=1
        end
    }

    count
end



def caesar_cipher(message, number)
    alphabet = ("a".."z").to_a
    new_message = ""

    message.each_char{ |char|
        if alphabet.include?(char)
            old_index = alphabet.index(char)
            new_index = old_index + number
            new_message += alphabet[new_index % 26]
        else
            new_message += char
        end
    }

    new_message
end


def partition(arr, num)
    first_arr = []
    secord_arr = []
    new_arr = []

    arr.each{ |el| 
        if el < num 
            first_arr << el
        else
            secord_arr << el
        end
    }

    [first_arr, secord_arr]  
end



def merge(hash1, hash2)
    new_hash = {}
    hash1.each{ |key, value| new_hash[key] = value }
    hash2.each{ |key, value| new_hash[key] = value }
    new_hash
end



def censor(sentence, curse_words)
    arr_sentence = sentence.split(" ")

    arr_sentence.map{ |word|
        if curse_words.include?(word.downcase) 
            vowels_replaced(word)
        else
            word
        end
    }

    arr_sentence.join(" ")
end



def vowels_replaced(word)
    vowels = "aeiou"
    word.each_char.with_index{ |char, idx|
        if vowels.include?(char.downcase)
            word[idx] = "*"
        end
    }
    word
end



def power_of_two?(num)
    product = 1

    while product < num
        product *=2
    end

    product == num
end



def palindrome?(string)

    string.each_char.with_index{ |char, idx|
        if char != string[-idx - 1]
            return false
        end
    }

    true
end



def substrings(string)
    subs = []

    (0...string.length).each{ |start_idx|
        (start_idx...string.length).each{ |end_idx|
            subs << string[start_idx..end_idx]
        }
    }

    subs
end



def palindrome_substrings(string)

    substrings(string).select{ |string| string.length > 1 && palindrome?(string) }

end