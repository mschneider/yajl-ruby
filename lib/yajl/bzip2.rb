# encoding: UTF-8

require 'yajl.rb' unless defined?(Yajl::Stream)

begin
  require 'bzip2' unless defined?(Bzip2)
  require 'yajl/bzip2/stream_reader.rb'
rescue LoadError => e
  raise "Unable to load the bzip2 library. Is the bzip2-ruby gem installed?"
end