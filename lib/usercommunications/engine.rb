module Usercommunications
  class Engine < ::Rails::Engine
    isolate_namespace Usercommunications

    config.assets.precompile += %w( usercommunications_manifest.js )

  end
end
