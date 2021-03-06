module Stevenson
  module Nests
    class Collection < ::Stevenson::Nest
      def initialize(*args)
        super(*args)
      end
      
      # Eventually should return the pages in the collection.
      def pages
        @children.select {|n| n.respond_to? :page? ? n.page? : false }
      end
    end
  end
end