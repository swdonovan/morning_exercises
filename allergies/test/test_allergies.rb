require 'minitest/autorun'
require 'minitest/pride'
require_relative "allergies"

class AllergyTest < Minitest::Test

  def test_if_number_can_be_divided
    allergy = Allergies.new("32")
    allergy.check

    assert_equal chocolate, allergy.check
  end

end
