# Coercible::HashToArray

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'coercible-hash_to_array'
```

And then execute:

    $ bundle

## Description

Use this gem if you're using Virtus (https://github.com/solnic/virtus) and
want to be able to enforce collection attribute passing hash to initializer.

## Examples:

Let's assume, that you have 2 classes in your system:

```ruby
class Something
  include Virtus.model
  attribute :feature, String
end

class SomethingElse
  include Virtus.model

  attribute :strings, [String]
  attribute :hashes, [Hash]
  attribute :somethings, [Something]
end
```

### a) Without `coercible-hash_to_array` gem

```ruby
# > SomethingElse.new(strings: "abc")
# => #<SomethingElse:0x007fd64b5e1e50 @strings=["abc"], @hashes=[], @somethings=[]>

# > SomethingElse.new(hashes: {key: 'value', key2: 'another value' })
# => #<SomethingElse:0x007fd649f263a0 @strings=[], @hashes=[{:key=>nil, "value"=>nil}, {:key2=>nil, "another value"=>nil}], @somethings=[]>

# > SomethingElse.new(somethings: { feature: 'wings' })
# => NoMethodError: Expected [:feature, "wings"] to respond to #to_hash
```

### b) With `coercible-hash_to_array` gem

```ruby
# > SomethingElse.new(strings: "abc")
# => #<SomethingElse:0x007fd64b5e1e50 @strings=["abc"], @hashes=[], @somethings=[]>

# > SomethingElse.new(hashes: {key: 'value', key2: 'another value' })
# => #<SomethingElse:0x007fd650a3d800 @strings=[], @hashes=[{:key=>"value", :key2=>"another value"}], @somethings=[]>

# > SomethingElse.new(somethings: { feature: 'wings' })
# => #<SomethingElse:0x007fd650a2edc8 @strings=[], @hashes=[], @somethings=[#<Something:0x007fd650a2ecd8 @feature="wings">]>
```
