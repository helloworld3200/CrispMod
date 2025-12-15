using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using ICities;

namespace Pistachio
{
    public class CrispMod : IUserMod
    {
        public string Name 
        {
            get { return "Crisp"; }
        }

        public string Description 
        {
            get { return "A graphical fidelity overhaul, by pistachiocrisps."; }
        }
    }
}
