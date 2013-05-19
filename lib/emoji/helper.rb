module Emoji
  module Helper
    module_function

    def utf8_encode(str)
      [str.to_i(16)].pack("U*")
    end

  end
end
