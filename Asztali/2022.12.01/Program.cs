using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2022._12._01
{
    class Program
    {
        static Random rnd = new Random();
        static void Main(string[] args)
        {
            //Elso();
            //Masodik();
            //Harmadik();
            //Negyedik();
            //Otodik();
            //Hatodik();
            //Hetedik();
            //Nyolcadik();
            Kilencedik();

            Console.SetCursorPosition(0, Console.WindowHeight-1);
            Console.Write("Nyomd le az entert...");
            Console.ReadLine();
        }

        static void Elso()
        {
            int[] sorozat = new int[10];
            for (int i = 0; i < sorozat.Length; i++)
            {
                sorozat[i] = 22 + 4 * i;
            }

            foreach (var item in sorozat)
            {
                Console.Write($"{item} ");
            }
            Console.WriteLine();


            int[] sorozat1 = new int[10];
            sorozat1[0] = 22;
            for (int i = 1; i < sorozat1.Length; i++)
            {
                sorozat1[i] = sorozat1[i - 1] + 4;
            }
            foreach (var item in sorozat1)
            {
                Console.Write($"{item} ");
            }
            Console.WriteLine();
        }

        static void Masodik()
        {
            int[] dobokocka = new int[50];
            Random rnd = new Random();
            for (int i = 0; i < 50; i++)
            {
                dobokocka[i] = rnd.Next(1,7);
            }

            foreach (var item in dobokocka)
            {
                Console.Write($"{item} ");
            }
            Console.WriteLine();
        }

        static void Harmadik()
        {
            int[] kicsik = new int[10];
            for (int i = 0; i < 10; i++)
            {
                kicsik[i] = rnd.Next(1, 51);
            }

            foreach (var item in kicsik)
            {
                Console.Write($"{item} ");
            }
            Console.WriteLine();
        }

        static void Negyedik()
        {
            try
            {
                string[] orszagok = new string[10];
                Console.WriteLine("Adj meg országokat (max 10)");
                for (int i = 0; i < 10; i++)
                { 
                    if (orszagok.Contains("magyarország"))
                    {
                        break;
                    }
                    else
                    {
                        orszagok[i] = Console.ReadLine();
                    }
                }

                foreach (var item in orszagok)
                {
                    Console.Write($"{item} ");
                }
                Console.WriteLine();

            }
            catch (Exception)
            {
                Console.WriteLine("Hibás adatot adtál meg.");
            }
        }

        static void Otodik()
        {
            string[] toto = new string[14];
            for (int i = 0; i < 14; i++)       
            {
                int tipp = rnd.Next(1, 4);
                switch (tipp)
                {
                    case 1:
                        toto[i] = "1";
                        break;
                    case 2:
                        toto[i] = "2";
                        break;
                    case 3:
                        toto[i] = "x";
                        break;
                    default:
                        break;
                }
            }

            foreach (var item in toto)
            {
                Console.Write($"{item} ");
            }
            Console.WriteLine();
        }

        static void Hatodik()
        {
            int[] tengerszint = new int[32/4];
            for (int i = 0; i < 32/4; i++)
            {
                tengerszint[i] = rnd.Next(100, 147);
            }

            foreach (var item in tengerszint)
            {
                Console.Write($"{item} ");
            }
            Console.WriteLine();
        }

        static void Hetedik()
        {
            int[] skanditipp = new int[7];
            for (int i = 0; i < 7; i++)
            {
                skanditipp[i] = rnd.Next(36);
            }

            foreach (var item in skanditipp)
            {
                Console.Write($"{item} ");
            }
            Console.WriteLine();
        }
        static void Nyolcadik()
        {
            int[] tavol = new int[6];
            for (int i = 0; i < 6; i++)
            {
                int ugras = rnd.Next(830);
                if (ugras < 600)
                {
                    tavol[i] = 0;
                }
                else
                {
                    tavol[i] = ugras;
                }
            }

            foreach (var item in tavol)
            {
                Console.Write($"{item} ");
            }
            Console.WriteLine();
        }
        static void Kilencedik()
        {
            int[] futas = new int[13];
            for (int i = 0; i < 13; i++)
            {
                futas[i] = rnd.Next(165, 191);
                if (i >= 3)
                {
                    futas[i] = rnd.Next(1, 12);
                }
            }


            foreach (var item in futas)
            {
                Console.Write($"{item}sec ");
            }
            Console.WriteLine();
        }
    }
}
