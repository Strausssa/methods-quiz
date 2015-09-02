require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz
   	end.new
	end

	# TODO - write tests here
	#1
	def test_has_teen
		assert_equal false, @m.has_teen(1, 2, 3)
		assert_equal true, @m.has_teen(12, 45, 17)
		assert_equal false, @m.has_teen(10, 20, 12)
		assert_equal true, @m.has_teen(13, 16, 19)
	end

#2
	def test_not_string
		assert_equal "notasdf", @m.not_string("notasdf")
		assert_equal "not hey", @m.not_string("hey")
		assert_equal "not yo", @m.not_string("not yo")
		assert_equal "not this is cool, not", @m.not_string("this is cool, not")
	end

#3
	def test_icy_hot?
		assert_equal false, @m.icy_hot?(-25, 78)
		assert_equal true, @m.icy_hot?(0, 100)
		assert_equal false, @m.icy_hot?(6, 5876745)
		assert_equal true, @m.icy_hot?(-32, 134)
	end

#4
	def test_closer_to
		assert_equal 34, @m.closer_to(45, 34, 67)
		assert_equal 0, @m.closer_to(30, 78, 78)
		assert_equal 123, @m.closer_to(30, 79697, 123)
		assert_equal 0, @m.closer_to(6, -8, -8)
	end

#5
	def test_two_as_one?
		assert_equal true, @m.two_as_one?(4, 5, 9)
		assert_equal false, @m.two_as_one?(7, 8, 3)
		assert_equal true, @m.two_as_one?(8, 3, 5)
		assert_equal true, @m.two_as_one?(-9, -10, -1)
	end

	def test_pig_latinify
		assert_equal "eyhay", @m.pig_latinify(" hey ")
		assert_equal "oyay", @m.pig_latinify("yo")
		assert_equal "orangeway", @m.pig_latinify("orange")
		assert_equal "iphoneway", @m.pig_latinify(" iPhone")

		assert_equal "sh*t", @m.pig_latinify("shit")
	end
end
