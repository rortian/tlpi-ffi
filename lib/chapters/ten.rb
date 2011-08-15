
module TLPI::Ten
  extend FFI::Library
  ffi_lib FFI::Library::LIBC

  #p 186
  attach_function :gettimeofday, [:pointer,:pointer], :int

  #p 186
  #struct timeval
  #time t tv_sec
  #suseconds tv_usec
  class Timeval < FFI::Struct
    layout :tv_sec => :ulong, :tv_usec => :ulong
  end

  #p 187
  attach_function :time, [:pointer], :ulong

  #p 188
  attach_function :ctime, [:pointer], :string

  #p 189
  attach_function :gmtime, [:pointer], :pointer

  #p 189
  attach_function :localtime, [:pointer], :pointer

  #p 189
  #struct tm
  class Tm < FFI::Struct
    layout :tm_sec => :int, :tm_min => :int,
           :tm_hour => :int, :tm_mday => :int,
           :tm_mon => :int, :tm_year => :int,
           :tm_wday => :int, :tm_yday => :int,
           :tm_isdst => :int
  end
end
