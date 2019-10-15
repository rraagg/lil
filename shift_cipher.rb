#!/usr/bin/env ruby
# frozen_string_literal: true

# Lines 15,16,20,21,33,34,38,39 were added by me to fix a bug. The rest of the code is from
# Ruby: Classes and Modules on LinkedIn learning

class ShiftCipher
  @@upcase = [*'A'..'Z']
  @@downcase = [*'a'..'z']

  def self.encode(string, pos = 3)
    string.chars.map do |char|
      if @@downcase.include?(char)
        i = @@downcase.find_index(char)
        total = i + pos
        mod = total < @@downcase.length ? total : total % @@downcase.length
        @@downcase[mod]
      elsif @@upcase.include?(char)
        i = @@upcase.find_index(char)
        total = i + pos
        mod = total < @@downcase.length ? total : total % @@downcase.length
        @@upcase[mod]
      else
        char
      end
    end.join('')
  end

  def self.decode(string, pos = 3)
    string.chars.map do |char|
      if @@downcase.include?(char)
        i = @@downcase.find_index(char)
        total = i - pos
        mod = total < @@downcase.length ? total : total % @@downcase.length
        @@downcase[mod]
      elsif @@upcase.include?(char)
        i = @@upcase.find_index(char)
        total = i - pos
        mod = total < @@downcase.length ? total : total % @@downcase.length
        @@upcase[mod]
      else
        char
      end
    end.join('')
  end
end
