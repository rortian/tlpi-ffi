module TLPI::Proc
  class Process
    attr_reader :name,:state,:tgid,:pid,:ppid

    def initialize(pid = 'self')
      @status_path = "/proc/#{pid}/status"
      check_status
    end

    def check_status
      status = File.open @status_path
      status.readlines.map(&:split).each do |(entry,*value)|
        easy = value.first
        case entry
        when /Name:/
          @name = easy
        when /State:/
          @state = easy
        when /Tgid:/
          @tgid = easy.to_i
        when /^Pid:/
          @pid = easy.to_i
        when /^PPid:/
          @ppid = easy.to_i
        when /^Threads:/
          @threads = easy.to_i
        else
          puts value.unshift(entry).join(' ')
        end
      end
    end
  end
end

