module TLPI::Proc
  class Process

    def initialize(pid = 'self')
      @status_path = "/proc/#{pid}/status"
      check_status
    end

    def check_status
      status = File.open @status_path
      status.readlines.each do |line|
        case line
        when
        else
          puts line
        end
      end
    end
  end
end

