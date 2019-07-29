# -*- ruby encoding: utf-8 -*-

gem "minitest"
require 'minitest/autorun'
require '../lib/reset'

class TestReset < Minitest::Test
  def setup
    @a = Reset.new([1,4,2])
    @b = Reset.new([1,5,4])
    @c = Reset.new([1,2])
    @d = Reset.new([1,6])
  end

  def test_union
    assert_equal [1,2,4,5], (@a.union(@b)).set_hash.keys.sort
  end

  def test_intersection
    assert_equal [1,4], (@a.intersection(@b)).set_hash.keys.sort
  end

  def test_difference
    assert_equal [2], (@a.difference(@b)).set_hash.keys.sort
    assert_equal [5], (@b.difference(@a)).set_hash.keys.sort
  end

  def test_subset
    assert_equal true, @c.subset(@a)
    assert_equal false, @d.subset(@b)
  end

end
