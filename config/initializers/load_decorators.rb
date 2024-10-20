# initialize decorators
Dir.glob(File.expand_path("../../app/decorators/*.rb", __dir__)).sort.each do |file|
  require file
end
