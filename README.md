# spyfu-rb

An unofficial gem to access the [SpyFu API](http://www.spyfu.com/o/spyfu-api/about.aspx). It requires [a SpyFu account](http://www.spyfu.com/o/spyfu-api/get-started.aspx).

```ruby
spyfu = SpyFu.client(app_id, secret_key)
```
## URL API

You can access the [URL API](http://www.spyfu.com/o/spyfu-api/documentation/url-api.aspx).

```ruby
spyfu.url_api.organic_kws(:q => "spyfu.com/blog", :r => 5, :blmsv => 888)
spyfu.url_api.paid_kws(:q => "spyfu.com/blog", :r => 5, :bldsv => 888)
```

## Weekly Tracking API

You can access the [Weekly Tracking API](http://www.spyfu.com/o/spyfu-api/documentation/tracking-api.aspx).

```ruby
spyfu.weekly_tracking_api.add_terms(...)
spyfu.weekly_tracking_api.get_groups(...)
spyfu.weekly_tracking_api.get_terms(...)
spyfu.weekly_tracking_api.get_term_data(...)
spyfu.weekly_tracking_api.delete_terms(...)
```

## KSS API

You can access the [Keyword SmartSearch API](http://www.spyfu.com/o/spyfu-api/documentation/kss-api.aspx).

```ruby
spyfu.kss_api.get_term_page_keywords(:keyword => 'spyfu api', :maxRows => 100)
```

## Known Issues

* Parameter values are not properly encoded. Doing so break the request signature.
* Multiple parameters with the same name and different values are not handled. I don't see where this is used but comments in SpyFu's sample code mentions it.
* Allow paramers to be more ruby like (:maxRows becomes :max_rows)


## Contributing to spyfu-rb

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2014 Robert Graff. See LICENSE.txt for
further details.
