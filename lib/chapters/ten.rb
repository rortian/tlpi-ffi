
module TLPI::Ten
  extend FFI::Library
  ffi_lib FFI::Library::LIBC

  puts "Hello there!!"
end
