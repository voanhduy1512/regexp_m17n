# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      begin
        str = '.'.encode(enc)
      rescue
        # ruby can't encoding ISO-2022-JP-2 and UTF-7 yet. This is bug in the test, not non_empty? method
        next
      end
      assert(RegexpM17N.non_empty?(str))
    end
  end
end
