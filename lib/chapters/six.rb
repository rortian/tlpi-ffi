
module TLPI::Six
  extend FFI::Library
  ffi_lib FFI::Library::LIBC

  #p 114
  attach_function :getpid, [], :int

  #p 115
  attach_function :getppid, [], :int

  #p 127
  attach_function :getenv, [:string], :string
end

