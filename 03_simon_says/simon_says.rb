def echo message
    message
end

def shout message
    message.upcase
end

def repeat message, num = 2
    original = message
    num-=1
    num.times do
        message += ' ' + original
    end
    message
end

def start_of_word word, number
    word[0..number-1]
end

def first_word string
    array = string.split(" ")
    return array.first
end

def titleize string
    words = string.split(" ")
    capitalized_string = ''
    words.each do |word|
        if word != 'and' and word !='over' and word !='the'
            if word == words.last
                capitalized_string += word.capitalize
            else
                capitalized_string += word.capitalize + ' '
            end
        else
            if word == words.last
                capitalized_string += word
            else
                capitalized_string += word + ' '
            end
        end
    end
    capitalized_string[0] = capitalized_string[0].upcase
    capitalized_string
end