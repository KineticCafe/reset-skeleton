# Reset Class

# Approach
- I have used hash to implement the Reset class. Since we don't want any element repeated in the set, we can simply check if the element is present in the hash and add it in the Reset only if it is not present in the hash.

# Creating a set
- Pass an array of values for which set is to be made
`a = Reset.new([1,2,3,4])`
`b = Reset.new([1,4,5,6])`

# Union `a.union(b)`
- Returns a new set with the union of `a` and `b`

# Intersection `a.intersection(b)`
- Returns a new set with the intersection of `a` and `b`

# Difference `a.difference(b)`
- Returns a new set with the difference of `a` and `b`

# Subset `a.subset(b)`
- Return `true` if `a` is a subset of `b`, else `false`


# Running the test cases
- Go into the `reset-skeleton/ruby/test/` folder and run `ruby test_reset.rb` to run the test cases.

