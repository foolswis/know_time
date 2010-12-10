module KnowTime
  class KnowTime
    def initialize(output=nil)
      @output = output
    end

    def start
      @output.puts 'Welcome to Know Time!'
      @output.puts 'Start recording? (y/n)'
    end

    def start_recording
      @recording_status = 'recording'
      @recording_start_time = Time.now
    end

    def recording_status
      @recording_status
    end
  end
end
