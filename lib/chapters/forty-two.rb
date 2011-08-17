
module TLPI::FourtyTwo
  extend FFI::Library
  ffi_lib :dl

  RTLD_LAZY = 1 
  RTLD_NOW  = 2
  RTLD_BINDING_MASK = 3 
  RTLD_NOLOAD = 5
  RTLD_DEEPBIND = 8

  #p860
  attach_function :dlopen, [:string,:int], :pointer
end

