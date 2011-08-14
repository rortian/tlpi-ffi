require 'ffi'


module TLPI

  module Libc
    extend FFI::Library
    ffi_lib FFI::Library::LIBC
  end

end

require 'chapters/six'

require 'proc/proc'
