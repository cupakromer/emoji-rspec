def rspec3?
  defined?(::RSpec::Core) && ::RSpec::Core::Version::STRING >= '3.0.0'
end

if defined? RSpec
  if rspec3?
    require "emoji_test_love/rspec3"
  else
    require "emoji_test_love/rspec"
  end
end
