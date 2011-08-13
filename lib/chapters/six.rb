
module TLPI::Six
  extend FFI::Library
  ffi_lib FFI::Library::LIBC

  #p 114
  attach_function :getpid, [], :int

  #p 115
  attach_function :getppid, [], :int
end

