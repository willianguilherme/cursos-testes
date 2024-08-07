class PessoasController < ApplicationController
  def create
    Pessoa.create!(
      nome: params[:nome], idade: params[:idade], endereco: params[:endereco], cidade: params[:cidade],
      salario: params[:salario]
    )
    head :created
  end

  def read
    pessoas = nil
    if params[:id]
      pessoas = Pessoa.find_by(id: params[:id])
    else
      pessoas = Pessoa.all
    end

    if pessoas
      render json: pessoas
    else
      render json: {
        message: "User not found"
      }
    end
  end

  def edit
    pessoa = Pessoa.find_by(id: params[:id])

    # if pessoa
    #   updated = []
    #   if params[:nome]
    #     pessoa.update(nome: params[:nome])
    #     updated[updated.length] = "nome"
    #   end
    #   if params[:salario]
    #     pessoa.update(salario: params[:salario])
    #     updated[updated.length] = "salario"
    #   end
    #   if params[:idade]
    #     pessoa.update(idade: params[:idade])
    #     updated[updated.length] = "idade"
    #   end
    #   if params[:endereco]
    #     pessoa.update(endereco: params[:endereco])
    #     updated[updated.length] = "endereco"
    #   end
    #   if params[:cidade]
    #     pessoa.update(cidade: params[:cidade])
    #     updated[updated.length] = "cidade"
    #   end

      pessoa.update(update_params)

      render json: {
        message: "Update success"
        # filds: updated
      }
    # else
      # render json: {
      #   message: "Error to get pessoa with id #{params[:id]}"
      # }
    # end
  end

  def delete
    pessoa = Pessoa.find_by(id: params[:id])
    if pessoa
      pessoa.destroy
      render json: {
        message: "Pessoa deleted"
      }
    else
      render json: {
        message: "Could not find this pessoa"
      }
    end
  end

  # end crud

  def filter_salario
    pessoas = Pessoa.all
    pessoasFiltradas = []

    i = 0
    while i < pessoas.length do
      if pessoas[i].salario >= params[:valor].to_i
        pessoasFiltradas[pessoasFiltradas.length] = pessoas[i]
      end
      i = i + 1
    end

    render json: pessoasFiltradas
  end

  private

  def update_params
    params.permit(:nome, :salario, :idade, :cidade, :endereco)
  end
end
