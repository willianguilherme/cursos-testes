using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _8_CondicionaisDois
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando 8");

            int idade = 20;
            //int quantidadePessoas = 2;
            //bool acompanhado = quantidadePessoas >= 2;
            bool acompanhado = true;

            if (idade > 18 || acompanhado == true)
            {
                Console.WriteLine("Pode entrar");
            }
            else
            {
                Console.WriteLine("Não pode Entrar");
            }

            Console.ReadLine();
        }
    }
}
