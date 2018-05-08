require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  setup do
  @zona1 = Zona.new(nom: "zonatest", clima: "climaTest", temperatura: "15", humitat: "15")
  @zona1.save!
  @userCuidador = User.new(email: "eee@eee.eee", password: "eeeeee", password_confirmation:"eeeeee")
  @userCuidador.save!
  @animal = Animal.new(nom: "animaltest", raza: "razatest", zona_id: @zona1.id, any_naixement: "96", cuidador_id: @userCuidador.id)
  end

  test "should get index" do
    get animals_url
    assert_response :success
  end

  test "should get new" do
    get new_animal_url
    assert_response :success
  end
=begin
  test "should create animal" do
    assert_difference('Animal.count') do
      post animals_url, params: { animal: { any_naixement: @animal.any_naixement, cuidador_id: @animal.cuidador_id, nom: @animal.nom, raza: @animal.raza, zona_id: @animal.zona_id } }
    end

    assert_redirected_to animal_url(Animal.last)
  end

  test "should show animal" do
    get animal_url(@animal)
    assert_response :success
  end

  test "should get edit" do
    get edit_animal_url(@animal)
    assert_response :success
  end

  test "should update animal" do
    patch animal_url(@animal), params: { animal: { any_naixement: @animal.any_naixement, cuidador_id: @animal.cuidador_id, nom: @animal.nom, raza: @animal.raza, zona_id: @animal.zona_id } }
    assert_redirected_to animal_url(@animal)
  end

  test "should destroy animal" do
    assert_difference('Animal.count', -1) do
      delete animal_url(@animal)
    end

    assert_redirected_to animals_url
  end
=end
end
