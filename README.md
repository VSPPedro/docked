# Docked

Docked is able to detect whether a docker is being used and then return the IP addresses.

# Installation

*This gem is only for development environment.*

```ruby
group :development do
  gem 'docked', '~> 0.1'
end
```

# Usage

### ip_addresses

Example:

```ruby
Docked.ip_adresses # => [#<IPAddr: IPv4:172.19.0.0/255.255.255.0>]
``` 
