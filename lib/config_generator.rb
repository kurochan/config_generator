require 'config_generator/version'
require 'csv'
require 'erb'

module ConfigGenerator
  class Data
    def self.attr_accessor(*names)
      super(*names)
    end

    def instance_variable_set(name, value)
      super(name, value)
      Data.attr_accessor name.gsub('@', '').to_sym
    end

    def binding
      super
    end
  end

  def generate(value_file, template_files)
    template_files.each do |filename|
      erb = ERB.new(File.read(filename))
      table = CSV.table(value_file)
      table.each_with_index do |row, index|
        data = Data.new
        row.each do |key, value|
          data.instance_variable_set("@#{key}", value)
        end
        result = erb.result(data.binding)
        extname = File.extname(filename)
        output  = "#{File.basename(filename, extname)}_#{index}" \
          + (extname.empty? ? '' : "#{extname}")
        File.write(output, result)
      end
    end
  end
  module_function:generate
end
