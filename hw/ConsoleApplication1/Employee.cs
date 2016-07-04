using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
 

namespace MyHomework
{
    
        class Employee : Person
    {

        public int dateOfEmployment;
        public int salary;
        public int availableDaysOff;

        public Employee()
        {
            string Lastname;
            string Firstname;
            int DateOfBirth;
            int DateOfEmployment;
            int Salary;
            int AvailableDaysOff;

        }
        public void DisplayInfo()
        {
            Console.WriteLine(lastname + " " + firstname + " " + salary + " " + availableDaysOff);
        }

        private void SubstractDays()
        {
            Leave a;
            availableDaysOff -= a.duration; 
      }
        public void AddNewLeave()
        {
            Leave b;
            SubstractDays();
            employee = b.employee;
        }
        
        

    }
    public class Exceptie : Employee
    {
        public Exceptie()
        {
        }
        public Exceptie (string mesaj)
            : base(mesaj)
        {
        }



}
