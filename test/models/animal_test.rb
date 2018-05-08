require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup

  @zona1 = Zona.new(nom: "zonatest", clima: "climaTest", temperatura: "15", humitat: "15")
  @zona1.save!
  @userCuidador = User.new(email: "eee@eee.eee", password: "eeeeee", password_confirmation:"eeeeee")
  @userCuidador.save!
  @animal = Animal.new(nom: "animaltest", raza: "razatest", zona_id: @zona1.id, any_naixement: "96", cuidador_id: @userCuidador.id)

  end

  test "Objecta Animal Creat" do
assert @animal.valid?
  end

end
