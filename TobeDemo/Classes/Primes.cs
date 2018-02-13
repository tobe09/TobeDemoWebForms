using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace TobeDemo
{
    public class Primes
    {
        public string primeNumbers(int i, int n)
        {
            string values = "The prime numbers between " + i + " and " + n + " are: ";
            if (!(n == 0 || n == 1 || n == 2) && n > i)
            {
                for (int x = i; x <= n; x++) //loops from the initial to the final number as x
                {
                    int countPrime = 0; //checks if a number is prime
                    for (int y = 2; y < x; y++) //loops each x value for primes as y
                    {
                        if (x % y == 0) countPrime++;
                    }
                    if (countPrime == 0 && x != 0 && x != 1 && x != 2) values += x + ", ";
                }
                values = values.Remove(values.Length-2) + ".";
            }
            else
            {
                if (n <= i) values = "The End Point must be greater than the Start Point!";
                else values = "Your end point should be greater than 2!";
            }
            return values;
        }
    }
}