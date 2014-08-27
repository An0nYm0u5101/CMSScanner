require_relative 'interesting_files/robots_txt'

module CMSScanner
  # Test
  class InterestingFiles
    include Finder

    # @param [ CMSScanner::Target ] target
    def initialize(target)
      finders << Finder::InterestingFiles::RobotsTxt.new(target)
    end
  end
end