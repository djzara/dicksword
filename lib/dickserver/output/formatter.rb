module Output
  class Formatter
    attr_reader :format_name, :data_obj

    def data_obj=(data_obj)
      raise TypeError unless data_obj.is_a? Hash
    end

  end
end