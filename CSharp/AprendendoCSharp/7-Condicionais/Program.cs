using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _7_Condicionais
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando 7");

            int idade = 16;
            int quantidadePessoas = 2;

            if (idade > 18)
            {
                Console.WriteLine("Tem mais de 18 anos");
            }
            else
            {
                if (quantidadePessoas >= 2)
                    Console.WriteLine("Tem menos de 18, mas esta acompanhado");
                else
                    Console.WriteLine("Tem menos de 18 anos");
            }

            Console.ReadLine();
        }
    }
}
