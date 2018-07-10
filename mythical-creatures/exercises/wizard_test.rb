gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'wizard'

class WizardTest < Minitest::Test
  def test_has_name
    wizard = Wizard.new("Eric")
    assert_equal "Eric", wizard.name
  end

  def test_can_have_different_name
    wizard = Wizard.new("Alex")
    assert_equal "Alex", wizard.name
  end

  def test_is_bearded_by_default

    wizard = Wizard.new("Ben")
    assert wizard.bearded?
  end

  def test_is_not_always_bearded

    wizard = Wizard.new("Valerie", bearded: false)
    refute wizard.bearded?
  end

  def test_has_root_powers

    wizard = Wizard.new("Sarah", bearded: false)
    assert_equal "sudo chown ~/bin", wizard.incantation("chown ~/bin")
  end

  def test_has_lots_of_root_powers
    wizard = Wizard.new("Rob", bearded: false)
    assert_equal "sudo rm -rf /home/mirandax", wizard.incantation("rm -rf /home/mirandax")
  end

  def test_starts_rested
    # create wizard
    wiz = Wizard.new("Merls", bearded: true)
    # .rested? returns true
    assert_equal true, wiz.rested?
  end

  def test_can_cast_spells
    # create wizard
    wiz = Wizard.new("Merls")
    # .cast returns "MAGIC MISSILE!"
    assert_equal "MAGIC MISSILE", wiz.cast
  end

  def test_gets_tired_after_casting_three_spells
    # create wizard
    wiz = Wizard.new("Ozma")
    # casts spell twice
    wiz.cast
    wiz.cast
    # check wizard is rested
    assert_equal true, wiz.rested?
    # casts spell
    wiz.cast
    # check wizard is not rested
    refute wiz.rested?
  end

end