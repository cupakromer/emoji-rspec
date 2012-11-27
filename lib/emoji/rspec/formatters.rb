Dir[File.join(File.dirname(__FILE__), 'formatters', '*.rb')].each do |file|
  require_relative File.join('formatters', File.basename(file, '.rb'))
end
