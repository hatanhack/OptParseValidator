# frozen_string_literal: true

require 'json'

module OptParseValidator
  class ConfigFilesLoaderMerger < Array
    module ConfigFile
      # Json Implementation
      class JSON < Base
        # @params [ Hash ] opts
        # @return [ Hash ] a { 'key' => value } hash
        def parse(_opts = {})
          ::JSON.parse(File.read(path))
        end
      end
    end
  end
end
