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

To install this extension:

    script/extension install git://github.com/azimuth/spree-wymeditor.git
    script/extension install git://github.com/cmaujean/spree-snippets.git
    rake db:migrate

Snippet CRUD
------------

1. Login to the Administration Console
2. Click on the Configuration Tab
3. Click on the Snippets link

Snippet Use
-----------

In your view, use:

    <%= render_snippet(id or snippet or slug) %>

