# Claws

[![Build Status](https://travis-ci.org/winterchord/claws.svg?branch=master)](https://travis-ci.org/winterchord/claws)
[![Code Climate](https://codeclimate.com/github/winterchord/claws/badges/gpa.svg)](https://codeclimate.com/github/winterchord/claws)

A thread pool library extracted from
[puma](https://github.com/puma/puma).

This gem is __alpha__. It is not ready for public consumption yet.

## Installation

Add this line to your application's Gemfile:

    gem 'claws'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install claws

## Usage

### Full Example

```ruby
# the minimum number of threads that should be in the pool at a given time
min = 1

# the maximum number of threads that should be in the pool at a given time
max = 2

contents = []

# work is what will be performed by each thread
pool = Claws::ThreadPool.new(min, max) do |work|
  contents << work
end

# add "work" to the pool
pool << "foo"
pool << 1

# contents => [1, "foo"]

pool.spawned # => 1

# Tell all threads in the pool to exit (pool waits for them to finish)
pool.shutdown # => []

pool.spawned # => 0
```

## Contributing

1. Fork it ( http://github.com/winterchord/claws/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
