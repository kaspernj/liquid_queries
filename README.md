# LiquidQueries

Perform queries on your ActiveRecord collections directly from Liquid templates with the help of Ransack.

## Usage

Add a method to a drop that returns a collection:

```ruby
class MyDrop < Liquid::Drop
  def users
    LiquidQueries::Collection.new(collection: User.all)
  end
end
```

Then do something like this in your Liquid template:

```liquid
Kasper's ID is: {{ my_drop.users.ransack.first_name_eq.Kasper.first.id }}
Kasper's last name is {{ my_drop.users.ransack.first_name_eq.Kasper.first.last_name }}
```

Or something like this:

```liquid
Users with a name that contains "kasper":

{% for user in my_drop.users.ransack.name_cont.kasper.to_a %}
  {{ user.id }} - {{ user.first_name }} {{ user.last_name }}
{% endfor %}
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'liquid_queries'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install liquid_queries
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
