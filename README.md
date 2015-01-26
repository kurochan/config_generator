# ConfigGenerator

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'config_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install config_generator

## Usage

### Generate
```
$ generate-config [csv file] [templete files ...]
```

### Example
data.csv

|hostname|addr|subnet|gateway|
|:---:|:---:|:---:|:---:|
|hostA|192.168.1.10|255.255.255.0|192.168.1.1|
|hostB|192.168.1.11|255.255.255.0|192.168.1.1|

sample.conf

```
# sample configuration template
hostname = <%= hostname %>
address = <%= addr %>
subnetmask = <%= subnet %>
defaultgateway = <%= gateway %>
```

run
```
$ generate-config data.csv sample.conf
```

sample_0.conf

```
# sample configuration template
hostname = hostA
address = 192.168.1.10
subnetmask = 255.255.255.0
defaultgateway = 192.168.1.1
```

sample_1.conf

```
# sample configuration template
hostname = hostB
address = 192.168.1.11
subnetmask = 255.255.255.0
defaultgateway = 192.168.1.1
```

## Contributing

1. Fork it ( https://github.com/kurochan/config_generator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
