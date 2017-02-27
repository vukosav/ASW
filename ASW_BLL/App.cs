using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ASW_BLL
{
    public class App
    {
        private App()
        {
            // Prevent outside instantiation
        }

        private static readonly App _singleton = new App();
        public User UlogovaniKorisnik { get; set; }
        public static App Instance
        {
            get
            {
                return _singleton;
            }
        }
    }
}
