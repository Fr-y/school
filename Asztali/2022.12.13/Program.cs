using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _2022._12._13
{
    class Program
    {
        static Random rnd = new Random();
        static void Main(string[] args)
        {
            Console.Write("Hány számot generáljak: ");
            int hany = int.Parse(Console.ReadLine());


            List<int> szamok = new List<int>();

            for (int i = 0; i < hany; i++)
            {
                szamok.Add(rnd.Next(101));
            }

            for (int i = 0; i < szamok.Count; i++)
            {
                Console.WriteLine($"{szamok[i]} ");
            }

            Console.SetCursorPosition(0, Console.WindowHeight - 1);
            Console.Write("Nyomj entert a kilépéshez...");
            Console.Read();
        }
    }
}
