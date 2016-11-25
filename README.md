# Favorites - A Ruby Gem

Speed-dial for your ActiveRecords!  Set up shortcuts for commonly-accessed records so you can get them easily.

## Installation

```
# Install as a standalone gem
$ gem install table_print

# Or install within rails
In your Gemfile: gem "table_print"
$ bundle install
```

## Usage

1. Include the library in your ActiveRecord class
2. Set up your favorites with the `favorite` method.
  - First argument is the column to search, your favorite will forward to the `klass.find_by_<arg1>` method
  - Second argument is the shortcut name, and the value to search against
  ```
  class User < ActiveRecord::Base
    include Favorites
  
    favorite :email, {
      chris: "chris@arches.io",
      joe: "joe@joe.io"
    }
  end
  ```
3. That's it! Now you can use your favorite in your code or console.
  - In this example, `User.chris` will translate into `User.find_by_email("chris@arches.io")`
  - In this example, `User.joe` will translate into `User.find_by_email("joe@joe.io")`
