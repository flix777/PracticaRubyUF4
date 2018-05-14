require 'test_helper'

class ZonasControllerTest < ActionDispatch::IntegrationTest
  setup do
  @zona = Zona.new(nom: "zonatest", clima: "climaTest", temperatura: "15", humitat: "15")
  end

  test "should get index" do
    get zonas_url
    assert_response :success
  end

  test "should get new" do
    get new_zona_url
    assert_response :success
  end


=begin
  test "should create zona" do
    #assert_difference('Zona.count'),1 do
      post zonas_path, params: { zona: { clima: @zona.clima, humitat: @zona.humitat, nom: @zona.nom, temperatura: @zona.temperatura } }, xhr: true
    #end
  assert_equal "text/javascript", @response.content_type
  #assert_response :success
  end

  test "should show zona" do
    get zona_url(@zona)
    assert_response :success
  end

  test "should get edit" do
    get edit_zona_url(@zona)
    assert_response :success
  end

  test "should update zona" do
    patch zona_url(@zona), params: { zona: { clima: @zona.clima, humitat: @zona.humitat, nom: @zona.nom, temperatura: @zona.temperatura } }
    assert_redirected_to zona_url(@zona)
  end

  test "should destroy zona" do
    assert_difference('Zona.count', -1) do
      delete zona_url(@zona)
    end

    assert_redirected_to zonas_url
  end
=end
end
