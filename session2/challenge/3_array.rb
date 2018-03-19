# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
    my_test = ''
    chars.each.with_index {|x,i| my_test << x if i.even? }
    my_test
  end
end
