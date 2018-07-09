require_relative 'base'

module Response
  class Success < Response::Base
    def success?
      true
    end
  end
end
