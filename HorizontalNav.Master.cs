using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class VerticalNav : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (lblNextRace != null)
            {
                int nextRace = this.daysUntilNextRace();

                switch (nextRace)
                {
                    case 0:
                        lblNextRace.Text = "Race Day!";
                        break;
                    case 1:
                        lblNextRace.Text = "Next race is tomorrow!";
                        break;
                    default:
                        lblNextRace.Text = String.Format("There are only {0} days left until the next race!", nextRace);
                        break;
                }
            }
        }

        private int daysUntilNextRace()
        {
            DateTime nextRace = new DateTime(DateTime.Today.Year, 5, 4);

            if (DateTime.Today > nextRace)
            {
                nextRace = nextRace.AddYears(1);
            }
            TimeSpan ts = nextRace - DateTime.Today;

            return ts.Days;
        }
    }
}