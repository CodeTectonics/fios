module Fios
  module Registrar
    def self.register(&block)
      instance_eval(&block)
    end

    def self.data_source(klass)
      Fios::DataSources::Registry.register(klass)
    end

    def self.adapter(klass)
      Fios::Adapters::Registry.register(klass)
    end
  end
end
