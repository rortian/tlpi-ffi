module TLPI::Proc
  class Process

    attr_reader :name,:state,:tgid,:pid,:ppid

    def initialize(pid = 'self')
      @status_path = "/proc/#{pid}/status"
      check_status
    end

    def check_status
      status = File.open @status_path
      status.readlines.each do |line|
        spl = line.split
        case line
        when /Name:/
          @name = spl[1]
        when /State:/
          @state = line
        when /Tgid:/
          @tgid = spl[1].to_i
        when /Pid:/
          @pid = spl[1].to_i
        when /PPid:/
          require 'pry'
          binding.pry
          @ppid = spl[1].to_i
        else
          puts line
        end
      end
    end
  end
end

