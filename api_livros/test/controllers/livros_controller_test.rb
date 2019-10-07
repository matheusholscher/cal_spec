require 'test_helper'

class LivrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @livro = livros(:one)
  end

  test "should get index" do
    get livros_url, as: :json
    assert_response :success
  end

  test "should create livro" do
    assert_difference('Livro.count') do
      post livros_url, params: { livro: { ano: @livro.ano, autor: @livro.autor, edicao: @livro.edicao, isbn: @livro.isbn, nome: @livro.nome, sinopse: @livro.sinopse } }, as: :json
    end

    assert_response 201
  end

  test "should show livro" do
    get livro_url(@livro), as: :json
    assert_response :success
  end

  test "should update livro" do
    patch livro_url(@livro), params: { livro: { ano: @livro.ano, autor: @livro.autor, edicao: @livro.edicao, isbn: @livro.isbn, nome: @livro.nome, sinopse: @livro.sinopse } }, as: :json
    assert_response 200
  end

  test "should destroy livro" do
    assert_difference('Livro.count', -1) do
      delete livro_url(@livro), as: :json
    end

    assert_response 204
  end
end
