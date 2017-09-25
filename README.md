# spyfu-rb

An unofficial gem to access the [SpyFu API](https://www.spyfu.com/api). It requires [a SpyFu account](https://www.spyfu.com/api/get-started).

# Making a request

Here is a simple example on how to make a request to the API. A full listing of available params on available on [official site](https://www.spyfu.com/api). 

```ruby
spyfu = SpyFu.client('1234-12345-12345-1234', 'YOURSECRETKEY')
result = spyfu.kss_api.get_term_page_keywords(:q => 'spyfu api', :r => 100).request
result.body # API returns a JSON object with results
```

## Ad History API

You can access the [Core API](https://www.spyfu.com/api/docs/core).

```ruby
spyfu.ad_history_api.domain_ad_history(...).request
spyfu.ad_history_api.domain_ad_history_with_metrics(...).request
spyfu.ad_history_api.term_ad_history(...).request
```

## Core API

You can access the [Core API](https://www.spyfu.com/api/docs/core).

```ruby
spyfu.core_api.get_domain_metrics_us(...).request
spyfu.core_api.get_domain_metrics_uk(...).request
spyfu.core_api.get_domain_budget_history_us(...).request
spyfu.core_api.get_domain_budget_history_uk(...).request
spyfu.core_api.get_domain_competitors_us(...).request
spyfu.core_api.get_domain_competitors_uk(...).request
```

## KSS API

You can access the [Keyword SmartSearch API](https://www.spyfu.com/api/docs/related-keywords).

```ruby
spyfu.kss_api.related_keywords(:q => 'spyfu api', :r => 100).request
spyfu.kss_api.domain_related_keywords(:q => 'spyfu api', :r => 100).request
```

## Leads API

You can access the [Leads API](https://www.spyfu.com/api/docs/leads).

```ruby
spyfu.leads_api.get_contact_card(...).request
spyfu.leads_api.get_grid(...).request
spyfu.leads_api.get_top_list(...).request
```

## URL API

You can access the [URL API](https://www.spyfu.com/api/docs/url).

```ruby
spyfu.url_api.organic_kws(:q => "http://resources.spyfu.com/blog/", :r => 100).request
spyfu.url_api.paid_kws(:q => "http://resources.spyfu.com/blog/", :r => 100).request
spyfu.url_api.paid_estimates(...).request
spyfu.url_api.organic_estimates(...).request
```

## Weekly Tracking API

You can access the [Weekly Tracking API](https://www.spyfu.com/api/docs/weekly-tracking).

```ruby
spyfu.weekly_tracking_api.add_terms(...).request
spyfu.weekly_tracking_api.get_groups(...).request
spyfu.weekly_tracking_api.get_terms(...).request
spyfu.weekly_tracking_api.get_term_data(...).request
spyfu.weekly_tracking_api.delete_terms(...).request
```

# Known Issues

* Parameter values are not properly encoded. Doing so break the request signature.
* Multiple parameters with the same name and different values are not handled. I don't see where this is used but comments in SpyFu's sample code mentions it.
* Allow paramers to be more ruby like (:maxRows becomes :max_rows)


# Contributing to spyfu-rb

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

# Copyright

Copyright (c) 2014 Robert Graff. See LICENSE.txt for further details.
