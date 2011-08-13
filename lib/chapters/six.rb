
module TLPI::Six
  extend FFI::Library
  ffi_lib FFI::Library::LIBC

  #p 114
  attach_function :gitpid, [], :int
end

puts TLPI::Six.gitpid
