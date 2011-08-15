
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
    layout :tv_sec , :int,
           :tv_usec, :int
  end
end
