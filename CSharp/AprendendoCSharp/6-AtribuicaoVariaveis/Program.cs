﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _6_AtribuicaoVariaveis
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando 6");

            int idade = 32;
            int idadeGustavo = idade;

            idade = 20;

            Console.WriteLine(idade);
            Console.WriteLine(idadeGustavo);

            Console.ReadLine();
        }
    }
}
