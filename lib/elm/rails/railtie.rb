require "sprockets/railtie"

module Elm
  module Rails
    class Railtie < ::Rails::Railtie
      initializer :setup_elm_rails, group: :all do |app|
        Sprockets.register_transformer "text/x-elm", "application/javascript", Elm::Rails::Compiler
        Sprockets.register_mime_type "text/x-elm", extensions: %w{.elm}
      end
    end
  end
end
