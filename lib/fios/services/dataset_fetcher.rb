module Fios
  module Services
    class DatasetFetcher
      def self.fetch_chart_data(dataset, chart)
        adapter = Fios::Adapters::Registry.fetch(dataset.adapter)
        data_source = Fios::Definitions::Registry.fetch(dataset.slug)
        data = adapter.fetch_chart_data(data_source, chart)
      end

      def self.fetch_report_data(dataset, report)
        adapter = Fios::Adapters::Registry.fetch(dataset.adapter)
        data_source = Fios::Definitions::Registry.fetch(dataset.slug)
        data = adapter.fetch_report_data(data_source, report)
      end
    end
  end
end