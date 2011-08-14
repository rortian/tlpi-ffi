
module TLPI::Seven
  extend FFI::Library
  ffi_lib FFI::Library::LIBC

  #p 140
  attach_function :brk, [:pointer], :int

  #p 140
  attach_function :sbrk, [:int], :pointer
  

end

