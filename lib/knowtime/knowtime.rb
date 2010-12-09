module KnowTime
  class KnowTime
    def initialize(output)
      @output = output
    end

    def start
      @output.puts 'Welcome to Know Time!'
      @output.puts 'Start recording? (y/n)'
    end
  end
end
