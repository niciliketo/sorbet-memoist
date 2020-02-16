#!/usr/bin/env ruby

# typed: strict
require 'sorbet-runtime'
require 'memoist'
class MemoizeTest
  extend T::Sig
  extend Memoist
  sig do
    returns(String)
  end
  def a
    puts 'Not memoized'
    'a'
  end
  memoize :a
  def b
    puts 'Not memoized'
    'b'
  end
  memoize :b
end

t = MemoizeTest.new
puts t.a
puts t.a
puts t.b
puts t.b

