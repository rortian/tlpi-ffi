
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

  #p
  attach_function :dladdr, [:pointer,:pointer], :int

  #p
  attach_function :dlvsym, [:pointer,:string,:string], :pointer

  class DlInfo < FFI::Struct
    layout :dli_fname => :string,
           :dli_fbase => :pointer,
           :dli_sname => :string,
           :dli_saddr => :pointer
  end

end

