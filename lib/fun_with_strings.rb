module FunWithStrings
  def palindrome?
    tmpself = self.downcase.gsub(/\W/, '')
    tmpself == tmpself.reverse ? true : false
  end
  def count_words
    tmphash = {}
    self.split.each do |word|
      word.downcase!
      word.gsub!(/\W/, '')
      next if word == "" 
      if !tmphash.has_key?(word) then tmphash[word] = 0 end
      tmphash[word] += 1
    end
    tmphash
  end
  def anagram_groups
    tmphash = {}
    self.split.each do |word|
      counts = Array.new(26, 0)
      word.downcase.split("").each do |char|
        counts[char.ord - 97] += 1
      end
      countkey = counts.map { |e| e.to_s }.join(",")
      if !tmphash.has_key?(countkey) then tmphash[countkey] = [] end
      tmphash[countkey] << word
    end
    return tmphash.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
