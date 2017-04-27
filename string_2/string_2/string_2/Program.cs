using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace string_2
{
    class Program
    {
        static void Main(string[] args)
        {
            string s = "125-38-25-45-789-89-8";
            string s2 = s.Replace("-", "");
            string s3="";
            Console.WriteLine(s2);
            int l = s2.Length;
            int r = l % 3;
            int i = l / 3;
            if(r==0){
                for (int j = 0; j < i; j++)
                {
                    //int idx = 0;
                    s3 = s3 + s2.Substring(s3.Replace("-", "").Length, 3) + "-";
                }
                s3 = s3.Substring(0, s3.Length - 1);


            }
            if (r == 2)
            {
                for (int j = 0; j < i; j++)
                {
                    //int idx = 0;
                    s3 = s3 + s2.Substring(s3.Replace("-", "").Length, 3) + "-";
                }
                s3 += s2.Substring(s3.Replace("-", "").Length, 2);
            }
            if (r == 1)
            {
                for (int j = 0; j < i-1; j++)
                {
                    //int idx = 0;
                    s3 = s3 + s2.Substring(s3.Replace("-", "").Length, 3) + "-";

                }
                for (int j = 0; j < r+1; j++)
                {
                    s3 += s2.Substring(s3.Replace("-", "").Length, 2)+"-";
                }
              s3=  s3.Substring(0, s3.Length - 1);
            }
            Console.WriteLine(s3);

            Console.ReadLine();
        }
    }
}
