Rails.application.config.to_prepare do
  Fios::Registrar.register do
    # adapter Fios::Adapters::ActiveRecordAdapter
    # data_source EmployeesDataSource
  end
end
