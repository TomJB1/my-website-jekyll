module Jekyll
    module Filters
  
      ##--> THANK YOU to Tanguy Krotoff https://github.com/tkrotoff for this https://github.com/tkrotoff/osteo15/blob/master/_plugins/filters.rb
      # Sort a hash using String#casecmp the case-insensitive version of String#<=>
      # By default, Enumerable#sort uses <=>
      # [Add sort_natural to jekyll/filters.rb](https://github.com/jekyll/jekyll/issues/6290)
      def sort_natural(input)
        input.sort { |apple, orange| apple.first.casecmp(orange.first) }
  
        # Other solution:
        #input.sort_by { |hash| hash.first.downcase }
      end
  
    end
  end
  
  Liquid::Template.register_filter(Jekyll::Filters)