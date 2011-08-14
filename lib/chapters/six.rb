
module TLPI::Six
  extend FFI::Library
  ffi_lib FFI::Library::LIBC

  #p 114
  attach_function :getpid, [], :int

  #p 115
  attach_function :getppid, [], :int

  #p 127 
  attach_variable :environ,:pointer

  #p 127
  attach_function :getenv, [:string], :string

  #p 128
  attach_function :putenv, [:string], :int

  #p 128
  attach_function :setenv, [:string,:string,:int], :int

  #p 129
  attach_function :unsetenv, [:string], :int

  #p 129
  attach_function :clearenv, [], :int

end

