# Nested Data Structures: Printing and Coalescing Data

## Learning Goals

* Display the cells in an `Array` of `Array`s
* Traverse `Array` of `Array`s to produce a single value
* Traverse `Array` of `Array`s to produce a new nested data structure

## Introduction

When we started this module, we mentioned that we often use nested data
structures as a "base" from which to do data processing. `Array`s of `Array`s
is our first milestone in learning to work with nested data.

We're going to pick out three specific types of processing here:

1. Displaying the nested structure
1. Transforming the nested structure into a new structure (a collection)
1. Transforming the nested structure into a result (a single thing usually a number)

In each of these sections, we're going to give you a bit of "reference code."
Reference code is code that's a little generic and probably doesn't solve any
_real_ problem, but which is kept intentionally ***very simple*** so that you
can see how it might be adapted to your particular need. Some people call these
"reference implementations."

## Display the Cells in an `Array` of `Array`s

It's not often we say this, but this following bit of code is worth memorizing.
If you want to learn to speak any human language, it's a good idea to learn the
grammar, grow your vocabulary, and speak with native speakers as much as
possible.

**But**

That takes years, and, in a pinch, you should _really know_ how to ask for
food, water, emergency services, and a bathroom. Even if you don't understand
what's happening grammatically, having a few "stock phrases" in times of need
is helpful.  The following code is a good "stock phrase."

Assuming the following AoA:

```ruby
spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
]
```

We display it like:

```ruby
spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
]

row_index = 0
while row_index < spice_rack.count do
  element_index = 0
  while element_index < spice_rack[row_index].count do
    puts spice_rack[row_index][element_index]
    element_index += 1
  end
  row_index += 1
end #=> nil
```

This prints out:

```text
Posh
Scary
Sporty
Paprika
Fajita Mix
Coriander
Parsley
Sage
Rosemary
```

This "formula" can be expanded and changed. Maybe you want something more
descriptive than `row_index` or `element_index` index. Or, perhaps you need to
adjust behavior slightly. That's fine! But if you're not sure how to start,
this is always a good start and will get you un-stuck!

## Traverse `Array` of `Array`s to Produce a New Nested Data Structure

The same "formula" that we suggested you use above can easily be adapted for
doing work other than `puts`-ing things. Let's say we wanted to gather all the
elements that start with `P`.

```ruby
spice_rack = [
  ["Posh", "Scary", "Sporty"],
  ["Paprika", "Fajita Mix", "Coriander"],
  ["Parsley", "Sage", "Rosemary"]
]


outer_results = []
row_index = 0
while row_index < spice_rack.count do
  element_index = 0
  inner_results = []
  while element_index < spice_rack[row_index].count do
    # How to read the following line of code:
    #   Array at row_index
    #   Element of the inner array at element_index
    #   The first character of that element...
    if spice_rack[row_index][element_index][0] == "P"
      inner_results << spice_rack[row_index][element_index]
    end
    element_index += 1
  end
  outer_results << inner_results
  row_index += 1
end

outer_results #=> [["Posh"], ["Paprika"], ["Parsley"]]
```

We might call this _filtering_. When you learn Ruby's `Enumerable` methods in
just a little while, remembering this name will help a lot!

## Traverse `Array` of `Array`s to Produce a Single Value

Another variant on traversing nested `Array`s is traversing the matrix and
accumulating all the values. Let's imagine that someone created a grid
representing a guessing game. In each cell of the grid the games makers have
put some amount of cash. Let's sum up all the possible values to determine how
much money is in the grid.

```ruby
guessing_game_grid = [
 [1, 2, 1, 7, 3],
 [2, 100, 15, 4, 18],
 [15, 16, 99, 1, 2, 11]
]

total = 0
row_index = 0
while row_index < guessing_game_grid.count do
  element_index = 0
  while element_index < guessing_game_grid[row_index].count do
    total += guessing_game_grid[row_index][element_index]
    element_index += 1
  end
  row_index += 1
end
total #=> 297
```

This pattern is known as _reduction_ because you're going to _reduce_ a nested
data structure to a single value. As you learn Ruby's `Enumerable` methods,
remembering this name will help a lot!

## Conclusion

Congratulations! You've learned three important data processing tasks with
matrices and Ruby:

1. Print every element in the grid
1. Gather some of the elements that match a given criterion into a new `Array`
1. Gather all the elements to create a single value

In the lab, we're going to ask you to adapt these "reference implementations"
to do some drills. It's awesome to know that you don't need anything more
complex than while loops and assignments to process complex structures into
_insight_!

These drills are designed to help you have the tools you're going to need to
work with complex, nested `Array`s of `Array`s. Building these skills means
that when you encounter "`Array`s of `Hash`es of `Array`s of `Array`s," you'll
have trained to meet that challenge.

Keep in mind, you might need to mix-and-match: you might _filter_ some inner
`Array`s; and, of the ones that passed, you might average their numbers and
accumulate those numbers to a new Array or a new total.
