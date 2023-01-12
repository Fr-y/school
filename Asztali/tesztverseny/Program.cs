using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace tesztverseny
{
    class Program
    {
        static string[] beolvas = File.ReadAllLines("valaszok.txt");
        static string megoldas = beolvas[0];
        static string[] valaszok = beolvas.Skip(1).ToArray();

        static string azonosito;
        static string tippek;
        static void Main(string[] args)
        {

            Feladat1();
            Feladat2();
            Feladat3();
            Feladat4();
            Feladat5();
            Feladat6();
            Feladat7();



            Console.SetCursorPosition(0, Console.WindowHeight-1);
            Console.Write("Nyomd le az entert...");
            Console.ReadLine();
        }
        static void Feladat1()
        {
            Console.WriteLine("1. feladat: Az adatok beolvasása ");
            Console.WriteLine();
        }
        static void Feladat2()
        {
            Console.WriteLine($"2. feladat: A vetélkedőn {valaszok.Length} versenyző indult. ");
            Console.WriteLine();
        }
        static void Feladat3()
        {
            Console.Write("3. feladat: A versenyző azonosítója = ");
            azonosito = Console.ReadLine();
            foreach (var item in valaszok)
            {
                if (item.Contains(azonosito))
                {
                    tippek = item.Split(' ')[1];
                    Console.WriteLine($"{tippek}  (a versenyző válasza) ");
                    break;
                }
            }
            Console.WriteLine();
        }
        static void Feladat4()
        {
            string talalatok = "";
            Console.WriteLine("4. feladat:");
            Console.WriteLine($"{megoldas}    (a helyes megoldás)");
            for (int i = 0; i < megoldas.Length; i++)
            {
                if(megoldas[i] == tippek[i])
                {
                    talalatok += '+';
                }
                else
                {
                    talalatok += ' ';
                }
            }
            Console.WriteLine($"{talalatok}    (a versenyző helyes válaszai)");
            Console.WriteLine();
        }
        static void Feladat5()
        {

        }
        static void Feladat6()
        {

        }
        static void Feladat7()
        {

        }

    }
}
