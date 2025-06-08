require 'minitest/autorun'
require_relative 'settings'

class SettingsTest < Minitest::Test
  def test_adding_a_setting
    settings = Settings.new
    settings.add(:color, 'blue')

    settings.respond_to?(:color)
  end

  def test_setting_add_correct_value
    settings = Settings.new
    settings.add(:mode, 'Teste')
    real = settings.mode
    expected = 'Teste'

    assert_equal expected, real
  end

  def test_response_to_inexistant_setting
    settings = Settings.new
    real = settings.color
    expected = "Configuração 'color' não existe."

    assert_equal expected, real
  end

  def test_alias_being_added
    settings = Settings.new
    settings.add(:color, 'blue', alias: :colour)

    settings.respond_to?(:colour)
  end

  def alias_retrieve_correct_value
    settings = Settings.new
    settings.add(:color, 'blue', alias: :colour)
    real = settings.colour
    expected = 'blue'
    assert_equal expected, real
  end
end
