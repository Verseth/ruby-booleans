# frozen_string_literal: true

require "test_helper"

class TestBooleans < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Booleans::VERSION
  end

  def test_boolean_returns_correct_values
    assert_equal true, Boolean(5)
    assert_equal true, Boolean(0)
    assert_equal true, Boolean("foo")
    assert_equal true, Boolean("")
    assert_equal true, Boolean([])
    assert_equal true, Boolean({})
    assert_equal false, Boolean(nil)
    assert_equal false, Boolean(false)
  end

  def test_object_to_bool
    assert_equal true, 5.to_bool
    assert_equal true, 0.to_bool
    assert_equal true, "foo".to_bool
    assert_equal true, "".to_bool
    assert_equal true, [].to_bool
    assert_equal true, {}.to_bool
    assert_equal false, nil.to_bool
    assert_equal false, false.to_bool
  end

  def test_object_is_a_boolean
    assert_equal false, 5.is_a?(Boolean)
    assert_equal false, 0.is_a?(Boolean)
    assert_equal false, "foo".is_a?(Boolean)
    assert_equal false, "".is_a?(Boolean)
    assert_equal false, [].is_a?(Boolean)
    assert_equal false, {}.is_a?(Boolean)
    assert_equal false, nil.is_a?(Boolean)
    assert_equal true, false.is_a?(Boolean)
    assert_equal true, true.is_a?(Boolean)
  end
end
