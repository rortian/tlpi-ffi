
module TLPI::TwentyTwo
  extend FFI::Library
  ffi_lib FFI::Library::LIBC

  #p 592
  attach_function :acct,[:string],:int

  #p 599
  attach_function :clone,[:pointer,:pointer,:int,:pointer],:int

end
