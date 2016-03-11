require 'jekyll/scholar'
require 'uri'

module DietzFilter
  class Dietz < BibTeX::Filter
    def apply(value)
      value.to_s.gsub(URI.regexp(['http','https','ftp'])) { |c| "<a href=\"#{$&}\">Link</a>" }
    end
  end
end
