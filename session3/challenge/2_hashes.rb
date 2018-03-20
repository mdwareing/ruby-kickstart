# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase n
  up_to_odd = Hash.new
  n.downto(1){|x| up_to_odd[x] = (2..x-1).select{|x| x.even?} if x % 2 != 0}
  # n.downto 1 do |x|
  #   if x % 2 != 0 
  #     up_to_odd[x] = (2..x-1).select{|x| x.even?}
  #   end
  # end
  up_to_odd
end