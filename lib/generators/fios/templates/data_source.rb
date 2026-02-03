class <%= class_name %>
  include Fios::DataSources::Base

  def self.dataset_key
    :<%= file_name %>
  end
end
