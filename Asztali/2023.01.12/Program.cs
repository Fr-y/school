using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace _2023._01._12
{
    class Program
    {
        static string[] beolvas = File.ReadAllLines("kozmondasok.txt", Encoding.Default);
        static void Main(string[] args)
        {
            Feladat2();
            Feladat3();
            Feladat4();
            Feladat5();
            Feladat6();
            Feladat7();
            Feladat8();
            Feladat9();
            Feladat10();
            Feladat11();

            Console.SetCursorPosition(0, Console.WindowHeight-1);
            Console.Write("Nyomd le az entert...");
            Console.ReadLine();
        }

        static void Feladat2()
        {
            Console.WriteLine($"A fájl {beolvas.Length} közmondást tartalmaz.");
            Console.WriteLine();
        }
        static void Feladat3()
        {
            foreach (var item in beolvas)
            {
                if (item.Contains("malacz"))
                {
                    Console.WriteLine(item);
                }
            }
            Console.WriteLine();
        }
        static void Feladat4()
        {
            int szamlalo = 0;
            foreach (var item in beolvas)
            {
                if (item.Contains("malacz"))
                {
                    szamlalo += 1;
                }
            }
            Console.WriteLine($"{szamlalo} közmondásban szerepel a \"ló\" szó.");
            Console.WriteLine();
        }
        static void Feladat5()
        {
            int leghoszabb = 0;
            string leghoszabbmondat = "";
            foreach (var item in beolvas)
            {
                if (item.Length > leghoszabb)
                {
                    leghoszabb = item.Length;
                    leghoszabbmondat = item;
                }
            }
            Console.ForegroundColor = ConsoleColor.Green;
            Console.Write($"\"{leghoszabbmondat}\"");
            Console.ForegroundColor = ConsoleColor.White;
            Console.Write($" a leghosszab közmondás, {leghoszabb} karakterből áll.");
            Console.WriteLine();
        }
        static void Feladat6()
        {
            Console.WriteLine();
            int hossz = 100;
            string mondat = "";
            foreach (var item in beolvas)
            {
                if (item.Length < hossz)
                {
                    hossz = item.Length;
                    mondat = item;
                }
            }
            Console.ForegroundColor = ConsoleColor.Green;
            Console.Write($"\"{mondat}\"");
            Console.ForegroundColor = ConsoleColor.White;
            Console.Write($" a legrövidebb közmondás, {hossz} karakterből áll.");
            Console.WriteLine();
        }
        static void Feladat7()
        {
            Console.WriteLine();
            int leghoszabb = 0;
            string leghoszabbmondat = "";
            foreach (var item in beolvas)
            {
                if (item.Length > leghoszabb)
                {
                    leghoszabb = item.Length;
                    leghoszabbmondat = item;
                }
            }
            Console.WriteLine($"A leghoszabb közmondás második szava: {leghoszabbmondat.Split(' ')[1]}");
        }
        static void Feladat8()
        {
            Console.WriteLine();
            int legtobb = 0;
            string legtobbszavas = "";
            foreach (var item in beolvas)
            {
                if (item.Split(' ').Length > legtobb)
                {
                    legtobb = item.Split(' ').Length;
                    legtobbszavas = item;
                }
            }
            Console.ForegroundColor = ConsoleColor.Green;
            Console.Write($"\"{legtobbszavas}\"");
            Console.ForegroundColor = ConsoleColor.White;
            Console.Write($" a legtöbb szavas közmondás, {legtobb} szóból áll.");
            Console.WriteLine();
        }
        static void Feladat9()
        {
            Console.WriteLine();
            int szamlalo = 0;
            foreach (var mondat in beolvas)
            {
                foreach (var betu in mondat)
                {
                    if (betu == 'ű')
                    {
                        szamlalo += 1;
                    }
                }
            }
            Console.WriteLine($"{szamlalo} ű betű van a fájlban.");
            Console.WriteLine();
        }
        static void Feladat10()
        {
            bool talalt = false;
            foreach (var item in beolvas)
            {
                if (item.Contains("krajczár") && item.Contains("forint"))
                {
                    Console.WriteLine("Van olyan közmondás amiben szerepel a krajczár és a forint szó is.");
                    Console.WriteLine(item);
                    talalt = true;
                    break;
                }
            }
            if (!talalt)
            {
                Console.WriteLine("Nincs olyan közmondás amiben szerepel a krajczár és a forint szó is.");
            }
            Console.WriteLine();
        }

        static void Feladat11()
        {
            Console.WriteLine();
            foreach (var item in beolvas)
            {
                if (item.Contains("serbli"))
                {
                    int index = Array.FindIndex(beolvas, x => x.Contains(item));
                    Console.WriteLine($"{index+1}. során található a fájlnak a serbli szó");
                }
            }
        }
    }
}
