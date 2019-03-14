Rails TAL Style
==================

A gem to unify the development styles across the rails projects [The Appraisal Lane](theappraisallane.com).
This project is inspired by [house_style](https://github.com/altmetric/house_style)

# Dependencies

This project includes dependencies and configuration files for [reek](https://github.com/troessner/reek), [rubocop](https://github.com/rubocop-hq/rubocop) and [rails best practices](https://github.com/flyerhzm/rails_best_practices).

## Installation and configuration

Add the following line to your project's `Gemfile`

```(ruby)
group :test, :development do
    gem 'tal_style'
end    
```

After that, run the generator in order to copy the config files to the application's root directory. **This will override your current `.reek` and `.rubocop.yml` files**
```
rails generate tal_style:install
```

That's all!
Every time you run reek and rubocop in your project the shared config will be loaded.

