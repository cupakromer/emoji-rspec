Dir[File.join(File.dirname(__FILE__), 'formatters', '*.rb')].each do |file|
  require file
end
