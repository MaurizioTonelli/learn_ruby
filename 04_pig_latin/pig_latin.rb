def translate string
    words = string.split(" ")
    phrase = ''
    words.each do |word|
        if word == words.last
            phrase += parse word
        else
            phrase = phrase + parse(word) + ' '
        end
    end
    phrase
end

def parse word
    vowels = ['a','e','i','o','u']
    if vowels.include? word[0]
        word+= 'ay'
    elsif hasPhonem? word 
        consonants = getPhonem word
        word = word[consonants.length..]
        word += consonants + 'ay'
    else
        consonants = getFirstConsonants word
        word = word[consonants.length..]
        word += consonants +'ay'
    end
    word
end

def getFirstConsonants word
    vowels = ['a','e','i','o','u']
    first_consonants = ''
    i = 0
    while !vowels.include? word[i]
        first_consonants += word[i]
        i+=1
    end
    first_consonants
end

def hasPhonem? word
    phonems = ['qu', 'squ']
    phonems.each do |phonem|
        if word[0..phonem.length-1] == phonem 
            return true
        end
    end
    return false
end

def getPhonem word
    phonems = ['qu', 'squ']
    phonems.each do |phonem|
        if word[0..phonem.length-1] == phonem 
            return phonem
        end
    end
end