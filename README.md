# RolloutWeb

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'rollout_web'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rollout_web

## Usage

Because rollout keys aren't initialized until explicitly enabled/disabled, I've set it up so that you can define all of yours flags up front in a yml config file like so:

    # config/rollout.yml
    - feature1
    - feature2
    - feature3

For dynamically created flags, we also load in the features from ROLLOUT directly.

Because this is a simple tool, the switches control the features on a global level.  If you've enabled a feature to certain users or a percentage, flipping the switch will reset it completely.  I'll add features later to change the percentage or users/groups.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/rollout_web/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

Big thanks to the resque_web project for being the basis of the code here.  Mostly ripped from them.