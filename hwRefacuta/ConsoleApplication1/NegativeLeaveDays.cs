using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MyHomework
{
    class NegativeLeaveDays : Exception
    {
        public NegativeLeaveDays()
            : base()
        {
        }
        public NegativeLeaveDays(string message)
            : base(message)
        {
        }

    }
}
