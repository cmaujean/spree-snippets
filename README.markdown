Snippets
========

Admin configurable chunks of content that can be rendered in any view via the SnippetsHelper#render_snippet method.

Synopsis
--------
  
    # in a controller
    include SnippetsHelper 

    <%# in a view %>
    ...
    <%= render_snippet('slug-name') %>
    ...
    <%= render_snippet(@snippet_object_created_in_action) %>
    ...
    <% snippet_id = 26 %>
    <%= render_snippet(snippet_id) %> 

Author
------

Christopher Maujean: cmaujean@gmail.com
