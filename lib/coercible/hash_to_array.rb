require 'coercible/hash_to_array/version'
require 'coercible/hash_to_array/railtie'

module Coercible
  module HashToArray
    def to_array(value)
      [value]
    end
  end
end
