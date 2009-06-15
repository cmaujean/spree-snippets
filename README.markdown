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

