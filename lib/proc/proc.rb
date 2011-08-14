module TLPI::Proc
  class Process

    def initialize(pid = 'self')
      @status_path = "/proc/#{pid}/status"
      require 'pry'
      binding.pry
    end
  end
end

