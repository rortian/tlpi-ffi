
module TLPI::TwentyTwo
  extend FFI::Library
  ffi_lib FFI::Library::LIBC

  #p 592
  attach_function :acct,[:string],:int
end
