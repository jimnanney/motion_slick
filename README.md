# msk - Motion SlicK

Motion SlicK is a wrapper of the SpriteKit api that helps make building SpriteKit based games easier.

[![Code Climate](https://codeclimate.com/github/jimnanney/motion_slick/badges/gpa.svg)](https://codeclimate.com/github/jimnanney/motion_slick)

* [Installation](#installation)
* [Usage](#usage)
* [Contributing](#contributing)
* [License](#license)
* [API Documentation](#api-documentation)


## Installation

Add this line to your application's Gemfile:

    gem 'msk'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install msk

## Usage

The Motion SlicK gem adds a convenience DSL for SKAction onto the SKNode class. This adds less verbose names for common SKActions, and provides an easy way to build sequences and grouped actions (even nested).

For example:

```ruby
  def animate_swap(swap, &block)
    from = swap.tile_b.sprite
    to = swap.tile_a.sprite
    fpos = from.position
    tpos = to.position
    from.zPosition = 90 
    to.zPosition = 100

    to.run_sequence do
      move_to(fpos, 0.3).ease_out
      run_block &block
    end

    from.run_action move_to(to.position,0.3).ease_out
    run_action @swap_sound
  end
```

Here we are creating and running a sequence of actions on the ```to``` node.

The move_to action takes a position, and optional duration.

The DSL adds some more syntactic sugar by adding timing mode additions, such as the ```ease_out`` timing mode used above.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The MIT License (MIT)

Copyright (c) 2015 Jim Nanney

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

## API Documentation

### SKNode Action helper additions

#### run_sequence(&block)

Creates a Sequence action from the actions contained in the block and then starts the animation.

#### run_group(&block)

Creates a Group action from the actions contained in the block and then starts the animation.

#### group(&block)

Creates a Group action from the actions contained in the block and returns it.

#### repeat(count, action = nil,  &block)

Creates a Repeat action for either the action passed in, or a block containing actions to be performed on the node.

#### sequence(&block)

Creates a Sequence action from the actions contained in the block and returns it.

#### move_to(location, duration)

Returns a SKAction.moveTo:duration: action

#### move_by(delta, duration=0.25)

Returns a SKAction.moveBy:duration: action

#### fade_in(duration = 0.25)

Returns a SKAction.fadeInWithDuration: action

#### fade_out(duration = 0.25)

Returns a SKAction.fadeOutWithDuration: action

#### run_block(&block)

Returns a SKAction.runBlock action 

#### wait(duration = 0.25, with_range = nil)

Returns a SKAction.waitForDuration action or SKAction.waitForDuration:withRange action in with_range is specified

#### scale_to(scale = 1.0, duration=0.25)

Returns a SKAction.scaleTo:duration: action

#### remove_from_parent

Returns a SKAction.removeFromParent action

#### other_action(other)

Allows addition of an action that may not have a helper into a sequence

### SKNode position helpers

These methods allow easy inspection of the node's position and frame.

#### mid_x
#### mid_y
#### height
#### width
#### top
#### bottom
#### left
#### right

### SKAction helper methods

The following methods are added to SKAction to allow setting the timing mode easier. They all return self which allows easy chaining

#### ease_in
#### ease_out
#### linear


