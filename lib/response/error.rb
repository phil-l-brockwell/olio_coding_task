require_relative 'base'

module Response
  class Error < Response::Base
    DEFAULT_ERROR_MESSAGE = 'Something went wrong!'.freeze

    def success?
      false
    end

    def message
      @details[:error_message] || DEFAULT_ERROR_MESSAGE
    end
  end
end
