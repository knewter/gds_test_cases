require './importer.rb'

file = "TestScripts.1.16.csv"

importer = CsvImporter.new(file)
importer.template = File.read("template.xml.erb")
importer.export

blah = CsvImporter.new(file)
blah.cuke = File.read("cuke.erb")
blah.build_cucumber_feature_with_template_for_row
