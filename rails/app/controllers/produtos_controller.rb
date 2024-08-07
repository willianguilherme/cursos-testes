class ProdutosController < ApplicationController
  def index
    produtos = Produto.all
    message = nil
    if produtos.length > 0
      message = "Produtos encontrados"
    else
      message = "Nenhum produto encontrado"
    end
    render json: {
      produtos: produtos,
      quantidade: produtos.length,
      mensagem: message
    }
  end

  def create
    begin
      if !(params[:nome] && params[:preco] && params[:qnt])
        raise "Falta de parametros"
      end

      Produto.create(nome: params[:nome], preco: params[:preco], quantidade: params[:qnt], state: params[:state])
      # head :created

      render json: {
        message: "Produto criado",
        produto: {nome: params[:nome], preco: params[:preco], quantidade: params[:qnt], state: params[:state]}
      }
    rescue => exception
      render json: {
        message: exception
      }
    end

  end

  def delete
    produto = Produto.find_by(id: params[:id])
    message = nil
    if produto
      produto.destroy
      message = "Produto excluido"
    else
      message = "Produto não encontrado"
    end

    render json: {
      produto: produto,
      mensagem: message
    }
  end

  def read
    message = nil
    produtos = Produto.find_by(id: params[:id])
    if produtos
      message = "Produto encontrado"
    else
      message = "Falha: Produto não encontrado"
    end

    render json: {
      produto: produtos,
      message: message
    }
  end

  def edit
    begin
      produto = Produto.find_by(id: params[:id])
      if !produto
        raise "Produto não encontrado"
      end
      produto.update(update_params)
      render json: {
        message: "Produto atualizado",
        produto: produto
      }
    rescue => exception
      render json: {
        message: "Falha ao editar produto",
        error: exception
      }
    end
  end

  def update_params
    params.permit(:nome, :preco, :quantidade)
  end
end
