using System;

namespace _2022._12._06
{
    class Program
    {
        static void Main(string[] args)
        {
            Masodik();
            Harmadik();
        }

        static void Masodik()
        {
            try
            {
                Console.Write("fogyasztas = ");
                int F = int.Parse(Console.ReadLine());
                Console.Write("tartaly urtartalma = ");
                int V = int.Parse(Console.ReadLine());
                Console.Write("ut hossza= ");
                int D = int.Parse(Console.ReadLine());

                int megteheto_ut = V * 100 / F;

                if (D > megteheto_ut)
                {
                    Console.WriteLine("Az út során tankolni kell!");
                }
                else
                {
                    Console.WriteLine("Az út megtehető tankolás nélkül.");
                }
            }
            catch (Exception)
            {

                Console.WriteLine("Nem jó adatot adtal meg");
            }
        }

        static void Harmadik()
        {
            int[] seb = new int[100];
            for (int i = 0; i < seb.Length; i++)
            {
                int be = int.Parse(Console.ReadLine());
                if (be == 0)
                {
                    seb[i] = be;
                    break;
                }
                else
                {
                    seb[i] = be;
                }
            }
            for (int j = 0; j < seb.Length; j++)
            {
                if (seb[j] > 100)
                {
                        Console.WriteLine($"{j+1}. ember szegett szabályt elsőnek, {seb[j] - 100}km/h-val lépte túl a sebességkorlátot.");
                        break;
                }
            }
            
        }

    }
}
