require 'minitest/autorun'
require_relative 'vector2'

class Vector2Test < Minitest::Test
  def test_scalar_multiplication_vector_integer_multiplier
    v = Vector2.new(3, 4)
    expected = [6, 8]
    real = v * 2

    assert_equal expected, real
  end

  def test_scalar_multiplication_vector_float_multiplier
    v = Vector2.new(3, 4)
    expected = [7.5, 10]
    real = v * 2.5

    assert_equal expected, real
  end

  def test_dot_product
    v = Vector2.new(3, 4)
    expected = 25
    real = v * v

    assert_equal expected, real
  end

  def test_numeric_multiplication_with_vector_integer
    v = Vector2.new(3, 4)
    expected = [6, 8]
    real = 2 * v

    assert_equal expected, real
  end

  def test_numeric_multiplication_with_vector_float
    v = Vector2.new(3, 4)
    expected = [7.5, 10]
    real = 2.5 * v

    assert_equal expected, real
  end
end
