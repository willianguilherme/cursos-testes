using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _4_Conversoes
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando o projeto 4");
            
            //comentario 
            double salario;
            salario = 1200.70;

            int salarioInteiro;
            salarioInteiro = (int)salario;

            Console.WriteLine(salarioInteiro);

            //long 64 bits
            long idade = 16666666663333;
            Console.WriteLine(idade);

            //short 16 bits
            short quantidadeProduto = 150;
            Console.WriteLine(quantidadeProduto);

            float altura = 1.80f;
            Console.WriteLine(altura);

            Console.ReadLine();
        }
    }
}
