module WordRef
  class Result
    attr_accessor :term, :pos, :sense, :note

    def initialize(term, pos, sense, note)
      @term, @pos, @sense, @note = term, pos, sense, note
    end
  end
end
