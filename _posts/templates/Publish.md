<% await tp.file.move("/published/" + tp.file.title) %><% await tp.file.rename(tp.date.now("YYYY-MM-DD-") + tp.file.title) %><%*
const file = tp.file.find_tfile(tp.file.path(true));
await app.fileManager.processFrontMatter(file, (frontmatter) => {
  frontmatter["rss_date"] = tp.date.now("ddd, DD MMMM YYYY HH:mm") + " GMT";
})
-%>