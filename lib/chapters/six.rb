
module TLPI::Six
  extend FFI::Library
  ffi_lib FFI::Library::LIBC

  #p 114
  attach_function :getpid, [], :int
end

puts TLPI::Six.getpid
