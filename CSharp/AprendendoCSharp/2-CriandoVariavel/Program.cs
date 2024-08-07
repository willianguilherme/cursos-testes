using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2_CriandoVariavel
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Execurtando Variaveis");

            int idade;

            idade = 32;
            Console.WriteLine(idade);

            idade = 10 + 5;
            Console.WriteLine(idade);

            idade = 10 + 5 * 2;
            Console.WriteLine(idade);

            idade = (10 + 5) * 2;
            Console.WriteLine("Sua idade é: " + idade);

            Console.WriteLine("TECLE ALGO PARA SAIR ...");
            Console.ReadLine();
        }
    }
}
