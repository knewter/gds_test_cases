require 'csv'
require 'erb'

class CsvImporter
  attr_accessor :csv_rows, :headers, :csv_file, :template, :params, :cuke

  def initialize(file_path)
    @csv_file = File.open(file_path)
    @csv_rows = []
    @headers  = []
    @template = nil
    import
  end

  def import
    @csv_rows = CSV.read(@csv_file)
    @headers = @csv_rows.shift
    true
  end

  def row_to_hash(row)
    Hash[@headers.zip(row)]
  end

  def build_template_for_row(row)
    return unless template
    @params = row_to_hash(row)
    if @params["UIDateOfBirth"]
      split_birthday = @params["UIDateOfBirth"].split('/')
      if split_birthday[0].length == 1
        split_birthday[0] = '0' + split_birthday[0]
      end
      if split_birthday[1].length == 1
        split_birthday[1] = '0' + split_birthday[1]
      end
      @params["UIDateOfBirth"] = split_birthday[2] + split_birthday[0] + split_birthday[1]
    end
    erb = ERB.new(template)
    erb.result(binding)
  end

  def build_cucumber_feature_with_template_for_row
    csv_rows.each do |row|
      @params = row_to_hash(row)
      erb = ERB.new(cuke)
      content = erb.result(binding)
      filename = row[1]
      File.open("features/#{filename}.feature", 'w') do |file|
        file.puts content
      end
    end
  end

  def export
    csv_rows.each do |row|
      content = build_template_for_row(row)
      filename = row[1]
      File.open("out/#{filename}.xml",'w') do |file|
        file.puts content
      end
    end
  end
end

