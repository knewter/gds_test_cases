require './importer.rb'

importer = CsvImporter.new("TestScripts.1.14.csv")
importer.template = File.read("template.xml.erb")
importer.export

blah = CsvImporter.new("TestScripts.1.14.csv")
blah.cuke = File.read("cuke.erb")
blah.build_cucumber_feature_with_template_for_row
