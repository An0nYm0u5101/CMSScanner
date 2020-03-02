# frozen_string_literal: true

module CMSScanner
  module Model
    # FantasticoFileslist
    class FantasticoFileslist < InterestingFinding
      # @return [ Array<String> ] The interesting files/dirs detected
      def interesting_entries
        results = []

        entries.each do |entry|
          next unless /(?:admin|\.log|\.sql|\.db)/i.match?(entry)

          results << entry
        end
        results
      end

      def references
        @references ||= { url: ['http://www.acunetix.com/vulnerabilities/fantastico-fileslist/'] }
      end
    end
  end
end
