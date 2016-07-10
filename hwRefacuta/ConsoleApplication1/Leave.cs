using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MyHomework
{
    class Leave
    {
        public DateTime startingDate;
        public int duration;
        public string leaveType;
        public string employee;
        
        public void citire()
        {
            Console.WriteLine("Dati numele angajatului :");
            employee=Console.ReadLine();
            startingDate = new DateTime(2016, 08, 12);
            Console.WriteLine("Precizati motivul concediului ");
            leaveType = Console.ReadLine();
            Console.WriteLine("Dati durata concediului ");
            duration = Console.Read();

        }
      
    }
}
