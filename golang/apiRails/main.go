package main

import "fmt"

var isLooping bool = true
var isCorrect bool = true
var arrayOptions = [3]int{1, 2, 99}

func cliente() {
	var option int = -1
	fmt.Println("Painel de clientes")
	fmt.Println("1 - Listar clientes")
	fmt.Println("2 - Listar cliente por id")
	fmt.Println("3 - Criar cliente")
	fmt.Println("4 - Editar cliente")
	fmt.Println("5 - Excluir cliente")
	fmt.Println("99 - Sair")
	fmt.Scanln(&option)

	if option == 1 {
		getCliente()
	} else if option == 2 {
		var id int
		fmt.Scanln(&id)
		getCliente(id)
	} else if option == 3 {
		criarCliente()
	} else if option == 4 {
		editarCliente()
	} else if option == 5 {
		excluirCliente()
	} else if option == 99{
		isLooping = false
	} else{
		isCorrect = false
	}

}

func produto() {
	fmt.Println("produto")

}

func main() {
	fmt.Println("Bem vindo a loja\n")
    for isLooping {
		fmt.Println("***************")

		if !isCorrect{
			fmt.Println("Digite uma opção valida, por favor")
		}

		var option int = -1
		fmt.Println("Digite uma opção: ")
		fmt.Println("1 - Clientes")
		fmt.Println("2 - Produtos")
		fmt.Println("99 - Sair")
		fmt.Scanln(&option)
		fmt.Println("***************\n")

		if option == 1 {
			cliente()
		} else if option == 2 {
			produto()
		} else if option == 99{
			isLooping = false
		} else{
			isCorrect = false
		}
	}
	fmt.Println("Saindo da loja\nObrigado pela preferencia")
}
