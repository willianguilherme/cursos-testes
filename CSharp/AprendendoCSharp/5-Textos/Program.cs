using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _5_Textos
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Executando 5 - textos");

            char primeiraLetra = 'a';
            Console.WriteLine(primeiraLetra);

            primeiraLetra = (char)65;
            Console.WriteLine(primeiraLetra);

            primeiraLetra = (char)(primeiraLetra + 1);
            Console.WriteLine(primeiraLetra);

            string texto = "TESTO DE TEXTO";
            Console.WriteLine(texto);

            texto = "TESTO DE TEXTO " + 2021;
            Console.WriteLine(texto);

            /*string cursos = "- js\n" +
                "- java\n" +
                "- c\n" +
                "- c#\n" +
                "- .net\n";*/

            string cursos =
@"- js
- java
- c
- c#
- .net";
            Console.WriteLine(cursos);

            Console.ReadLine();
        }
    }
}
