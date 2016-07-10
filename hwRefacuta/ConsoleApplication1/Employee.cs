using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace MyHomework
{

    class Employee : Person
    {
        
        public DateTime dateOfEmployment;
        public int salary;
        public int availableDaysOff;

        public Employee()
        {
            string Lastname;
            string Firstname;
            DateTime DateOfBirth;
            DateTime DateOfEmployment;
            int Salary;
            int AvailableDaysOff;

        }
        public void DisplayInfo()
        {
            Console.WriteLine(lastname + " " + firstname + " " + salary + " " + availableDaysOff);
        }

        private int SubstractDays(Leave a)
        {
            availableDaysOff -= a.duration;
            return availableDaysOff;
        }

        public void AddNewLeave(Leave b)
        {
            b.citire();
            SubstractDays(b);  
        }

        public void NegativeLeaveDays(Leave c)
        {
            c.citire();
            int d = SubstractDays(c);
            if (d < c.duration)
                throw new NegativeLeaveDays("Numarul de zile ramase nu poate fi mai mare decat durata concediului");
        }
    }

    }

