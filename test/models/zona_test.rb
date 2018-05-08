require 'test_helper'

class ZonaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  def setup

  @zona = Zona.new(nom: "zonatest", clima: "climaTest", temperatura: "15", humitat: "15")
  @zona2 = Zona.new(nom: "zonatest", clima: "climaTest", temperatura: "200", humitat: "15")
  @zona3 = Zona.new(nom: "zonatest", clima: "climaTest", temperatura: "30", humitat: "5")
  end

  test "Objecta Zona Creat" do
assert @zona.valid?
  end

  test "Rang Temperatura Valid" do
assert_not @zona2.valid?
  end

  test "Rang Humitat Valid" do
assert_not @zona3.valid?
  end


end
