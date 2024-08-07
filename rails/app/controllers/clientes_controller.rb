class ClientesController < ApplicationController
  def index
    clientes = Cliente.all
    message = nil
    if clientes.length > 0
      message = "Clientes encontrados"
    else
      message = "Nenhum cliente encontrado"
    end
    render json: {
      clientes: clientes,
      quantidade: clientes.length,
      mensagem: message
    }
  end

  def id
    idValue = params[:id].to_i + 3
    render json: {
      id: idValue
    }
  end

  def create
    begin
      if !(params[:nome] && params[:sexo])
        raise "Falta de parametros"
      end

      Cliente.create(nome: params[:nome], idade: params[:idade], sexo: params[:sexo])
      # head :created

      render json: {
        message: "Cliente criado",
        cliente: {nome: params[:nome], idade: params[:idade], sexo: params[:sexo]}
      }
    rescue => exception
      render json: {
        message: exception
      }
    end

  end

  def delete
    cliente = Cliente.find_by(id: params[:id])
    message = nil
    if cliente
      cliente.destroy
      message = "Cliente excluido"
    else
      message = "Cliente não encontrado"
    end

    render json: {
      cliente: cliente,
      mensagem: message
    }
  end

  def read
    message = nil
    clientes = Cliente.find_by(id: params[:id])
    if clientes
      message = "Cliente encontrado"
    else
      message = "Falha: Cliente não encontrado"
    end

    render json: {
      cliente: clientes,
      message: message
    }
  end

  def edit
    begin
      cliente = Cliente.find_by(id: params[:id])
      if !cliente
        raise "Cliente não encontrado"
      end
      cliente.update(update_params)
      render json: {
        message: "Cliente atualizado",
        cliente: cliente
      }
    rescue => exception
      render json: {
        message: "Falha ao editar cliente",
        error: exception
      }
    end
  end

  def update_params
    params.permit(:nome, :idade, :sexo)
  end
end
