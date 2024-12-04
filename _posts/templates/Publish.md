<% await tp.file.move("/published/" + tp.file.title) %>
<% await tp.file.rename(tp.date.now("YYYY-MM-DD-") + tp.file.title) %>