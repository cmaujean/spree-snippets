Snippets
========

Admin configurable chunks of content that can be rendered in any view via the SnippetsHelper#render_snippet method.

Synopsis
--------
  
    <%# in a view %>
    ...
    <%= render_snippet('slug-name') %>
    ...
    <%= render_snippet(@snippet_object) %>
    ...
    <% snippet_id = 26 %>
    <%= render_snippet(snippet_id) %> 

Installation
------------

Add to Gemfile:
    gem 'spree_snippets', :git => 'git://github.com/divineforest/spree-snippets.git'

Run:
    bundle install
    rake spree_snippets:install
    rake db:migrate

Snippet CRUD
------------

1. Login to the Administration Console
2. Click on the Configuration Tab
3. Click on the Snippets link
