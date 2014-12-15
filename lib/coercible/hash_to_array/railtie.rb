module Coercible
  module HashToArray
    class Railtie < ::Rails::Railtie
      initializer 'coercible.hash_to_array' do
        ::Coercible::Coercer::Hash.send :include, Coercible::HashToArray
      end
    end
  end
end
