# Salvo tests

*A salvo in more modern terms is also the simultaneous discharge of artillery or firearms including the firing of guns either to hit a target, or in our case, a lot of websites*

Fast and simple tests to reduce regression time by test every service on the responsive news codebase.  

## Install dependencies

`bundle install`  
`brew install phantomjs`

## Options

There are several command line options that you can use when running the tests.  These include width, environment and config.  The final option is the tag name, ON, which ensures that only tests that have been enabled in the config will be run.  This option is stored within the .rspec file.

## Running
An example command would be

`WIDTH=1024 SITE=test CONFIG=news.yaml rspec`

Another

`WIDTH=320 SITE=test CONFIG=arabic.yaml rspec`

## Configs

There are configs in the configs folder that store all the test data, it is loaded in via Yaml files.

## Style guide

Tests should be written in the style of the [4-phase test](http://robots.thoughtbot.com/four-phase-test).  Though we probably don't need to do a lot of tear down, the 4 phase test follows this format

>setup  
>exercise  
>verify  
>teardown

##### An example of 4 phase

```ruby
# Setup
@video_page = AVPage.new
# exercise
@video_page.load
# verify
expect(@video_page).to have_a_video_player
# teardown
n/a
```

## Page Objects

We are using page objects to describe methods and behaviour on the page to make tests cleaner and easier to read.  This POM is using [SitePrism](https://github.com/natritmeyer/site_prism). When writing a test, create or update an existing support class with a simple file and class name.  Methods should also reflect actions or logic that a user would do, e.g open_navigation or have_top_stories.  

Within the page objects class, define a load method that will visit the page, also include matchers from RSpec/Capybara.

When instantiating the class in the test, reduce deplication by creating before and let objects.

```ruby
describe 'correspondent_page page' do
  before(:each) do
    @correspondent_page = CorrespondentPage.new
    @correspondent_page.load
  end
```
## Contributing

Submit tests in the same format as described above, update configs as per style found in news.yaml
