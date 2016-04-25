require "open3"
require "tempfile"

module Elm
  module Rails
    class Compiler
      def self.call(input)
        new.call input
      end

      def call(input)
        { data: compile(input[:filename]) }
      end

      private

      def compile(input_filename)
        input_directory = Pathname.new(input_filename).dirname
        output_file = Tempfile.new %w{compiled_elm_output .js}

        begin
          output, status = Open3.capture2e(
            {"LANG" => "en_US.UTF-8"},
            elm_make,
            input_filename,
            "--yes",
            "--output", output_file.path,
            chdir: input_directory
          )

          raise output unless status.success?

          output_file.read
        ensure
          output_file.unlink
        end
      end

      def elm_make
        `which elm-make`.chomp
      end
    end
  end
end
