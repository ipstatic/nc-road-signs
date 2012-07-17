require 'slim'
### 
# Compass
###

# Susy grids in Compass
# First: gem install compass-susy-plugin
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

page "/index.html" do
    @page_name = 'index'
end

page "/help.html" do
    @page_name = 'help'
end

page "/quizes/warning-signs.html" do
    @page_name = 'warning-signs'
    @questions = [
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/signal-ahead.png',
        :answer_1 => 'Stop ahead',
        :answer_2 => 'Traffic signal ahead',
        :answer_3 => 'School zone ahead',
        :answer_4 => 'Reduced speed zone ahead',
        :correct_answer => 2
      },
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/no-passing-zone.png',
        :answer_1 => 'No passing zone',
        :answer_2 => 'School zone ahead',
        :answer_3 => 'Reduced speed zone ahead',
        :answer_4 => 'Trucks entering highway ahead',
        :correct_answer => 1
      },
      {
        :question => 'What does this sign mean?',
        :image => '/images/signs/warning/bike-crossing.png',
        :answer_1 => 'No passing zone',
        :answer_2 => 'Reduced speed zone ahead',
        :answer_3 => 'Bicycle crossing',
        :answer_4 => 'Trucks entering highway ahead',
        :correct_answer => 3
      },
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/cross-road.png',
        :answer_1 => 'Four way intersection ahead',
        :answer_2 => 'Two way intersection ahead',
        :answer_3 => 'Road ends, be prepared to turn',
        :answer_4 => 'Winding road ahead',
        :correct_answer => 1
      },
      {
        :question => 'What does this sign mean?',
        :image => '/images/signs/warning/curve-right.png',
        :answer_1 => 'Winding road ahead',
        :answer_2 => 'No right turn',
        :answer_3 => 'Right turn',
        :answer_4 => 'Curve to the right ahead',
        :correct_answer => 4
      },
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/deer-crossing.png',
        :answer_1 => 'Dog crossing ahead',
        :answer_2 => 'Deer crossing ahead',
        :answer_3 => 'No hunting deer',
        :answer_4 => 'Bear crossing ahead',
        :correct_answer => 2
      },
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/divided-highway-begins.png',
        :answer_1 => 'Merging traffic',
        :answer_2 => 'Two lane highway begins, divided highway ends',
        :answer_3 => 'Divided highway begins, two lane highway ends',
        :answer_4 => 'Winding road ahead',
        :correct_answer => 3 
      },
      {
        :question => 'What does this sign mean?',
        :image => '/images/signs/warning/divided-highway-ends.png',
        :answer_1 => 'Winding road ahead',
        :answer_2 => 'Two lane highway begins, divided highway ends',
        :answer_3 => 'Divided highway begins, two lane highway ends',
        :answer_4 => 'Merging traffic',
        :correct_answer => 2
      },
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/hill.png',
        :answer_1 => 'Hill ahead',
        :answer_2 => 'Trucks reduce speed',
        :answer_3 => 'Truck turn off ahead',
        :answer_4 => 'No trucks allowed',
        :correct_answer => 1
      },
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/lane-drop.png',
        :answer_1 => 'Reduced speed zone ahead',
        :answer_2 => 'No passing zone',
        :answer_3 => 'Do not merge',
        :answer_4 => 'Lane dropped ahead',
        :correct_answer => 4
      },
      {
        :question => 'What does this sign mean?',
        :image => '/images/signs/warning/low-clearance.png',
        :answer_1 => 'Reduced speed zone ahead',
        :answer_2 => 'No trucks allowed',
        :answer_3 => 'Low clearance ahead',
        :answer_4 => 'Merging traffic',
        :correct_answer => 3
      },
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/merging-traffic.png',
        :answer_1 => 'Merging traffic',
        :answer_2 => 'No merging allowed',
        :answer_3 => 'Reduced speed zone ahead',
        :answer_4 => 'Lane dropped ahead',
        :correct_answer => 1
      },
      {
        :question => 'What does this sign mean?',
        :image => '/images/signs/warning/pedestrian-crossing.png',
        :answer_1 => 'Pedestrian crossing ahead',
        :answer_2 => 'No crossing ahead',
        :answer_3 => 'School crossing ahead',
        :answer_4 => 'No merging allowed',
        :correct_answer => 1
      },
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/railroad-crossing.png',
        :answer_1 => 'Reduced speed zone ahead',
        :answer_2 => 'No merging allowed',
        :answer_3 => 'No crossing ahead',
        :answer_4 => 'Railroad crossing ahead',
        :correct_answer => 4 
      },
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/school.png',
        :answer_1 => 'School zone ahead',
        :answer_2 => 'Pedestrian crossing ahead',
        :answer_3 => 'Reduced speed zone ahead',
        :answer_4 => 'No trucks allowed',
        :correct_answer => 1
      },
      {
        :question => 'What does this sign mean?',
        :image => '/images/signs/warning/slippery-when-wet.png',
        :answer_1 => 'Winding road ahead',
        :answer_2 => 'Slippery road when wet',
        :answer_3 => 'Reduced speed zone ahead',
        :answer_4 => 'Merging traffic',
        :correct_answer => 2
      },
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/stop-ahead.png',
        :answer_1 => 'Stop ahead',
        :answer_2 => 'Traffic signal ahead',
        :answer_3 => 'Reduced speed zone ahead',
        :answer_4 => 'No merging',
        :correct_answer => 1
      },
      {
        :question => 'What does this sign represent?',
        :image => '/images/signs/warning/winding-road.png',
        :answer_1 => 'Merging traffic',
        :answer_2 => 'Slippery road when wet',
        :answer_3 => 'Reduced speed zone ahead',
        :answer_4 => 'Winding road ahead',
        :correct_answer => 4
      },
    ].sort {rand}

    @total = @questions.count
end

# Per-page layout changes:
# 
# With no layout
# page "/path/to/file.html", :layout => false
# 
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
# 
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :markdown, :layout_engine => :slim

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css
  
  # Minify Javascript on build
  # activate :minify_javascript
  
  # Enable cache buster
  # activate :cache_buster
  
  # Use relative URLs
  # activate :relative_assets
  
  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher
  
  # Or use a different image path
  # set :http_path, "/Content/images/"
end