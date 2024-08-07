using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _9_Escopo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando 8");

            int idade = 20;
            bool acompanhado = true;
            string mensagemAdicional;

            if (acompanhado = true)
            {
                mensagemAdicional = "Esta acompanhado";
            }
            else
            {
                mensagemAdicional = "Não esta acompanhado";
            }

            if (idade > 18 || acompanhado == true)
            {
                Console.WriteLine("Pode entrar");
                Console.WriteLine(mensagemAdicional);
            }
            else
            {
                Console.WriteLine("Não pode Entrar");
            }

            Console.ReadLine();
        }
    }
}
