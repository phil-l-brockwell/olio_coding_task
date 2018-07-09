module Response
  class Base
    attr_accessor :details

    def initialize(details = {})
      @details = details
    end
  end
end
