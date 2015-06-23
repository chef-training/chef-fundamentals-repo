# Description

Installs message of the day (respects update-motd, if installed)

# Recipes

## default

The default recipe includes the cow and the knife\_status recipes

## cow

Displays a friendly warning-cow, logging onto a server in the production environment.

  This is example, a domain.com production server

  just in case you didn't notice the line above, maybe this cow helps:

```
   ___________________________________
  < YOU ARE ON A PRODUCTION SERVER! >
   -----------------------------------
          \   ^__^
           \  (oo)\_______
              (__))\/\    \
                  ||----w |
                  ||     ||
```

## knife\_status

plus a knife\_status line that displays the knife status of this node. (only when the node supports update-motd)

```
Last chef run: 10 minutes ago
```

# Attributes

You can specify whether to use colors in your attributes (defaults to true)

```ruby
node['motd']['color'] = true
```


# Providers

To use the provider in your cookbook, make sure you put the following line in your metadata.rb

```ruby
depends 'motd'
```

## default

The name attribute is only used if update-motd is installed on the system.
If not, it has no meaning.

Create motd using the shipped cow template

```ruby
motd '50-mymotd'
```

Create a motd using a custom template

```ruby
motd '50-mymotd' do
  cookbook 'my cookbook'
  source   'test.erb'
end
```

Use the default cow template, but do not use colors

```ruby
motd '50-mymotd' do
  color false
end
```

Remove a motd (if update-motd is used only)

```ruby
motd '50-mymotd' do
  action :delete
end
```
