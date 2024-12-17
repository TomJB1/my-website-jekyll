class Jekyll::Document
    def populate_title
        if relative_path =~ DATE_FILENAME_MATCHER
          date, slug, ext = Regexp.last_match.captures
          modify_date(date)
        elsif relative_path =~ DATELESS_FILENAME_MATCHER
          slug, ext = Regexp.last_match.captures
        end
        # `slug` will be nil for documents without an extension since the regex patterns
        # above tests for an extension as well.
        # In such cases, assign `basename_without_ext` as the slug.
        slug ||= basename_without_ext
  
        # slugs shouldn't end with a period
        # `String#gsub!` removes all trailing periods (in comparison to `String#chomp!`)
        slug.gsub!(%r!\.*\z!, "")
  
        # Try to ensure the user gets a title.
        data["title"] ||= slug
        # Only overwrite slug & ext if they aren't specified.
        data["slug"]  ||= slug
        data["ext"]   ||= ext
      end
    end