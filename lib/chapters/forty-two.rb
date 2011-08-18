
module TLPI::FortyTwo
  extend FFI::Library
  ffi_lib :dl

  RTLD_LAZY = 1 
  RTLD_NOW  = 2
  RTLD_BINDING_MASK = 3 
  RTLD_NOLOAD = 5
  RTLD_DEEPBIND = 8

  #p860
  attach_function :dlopen, [:string,:int], :pointer

  #p
  attach_function :dlerror, [], :string

  #p 
  attach_function :dlsym, [:pointer,:string], :pointer

  #p
  attach_function :dlclose, [:pointer],:int
end

