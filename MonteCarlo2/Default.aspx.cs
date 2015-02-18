using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MonteCarlo2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs1 = ConfigurationManager.ConnectionStrings["MSFTConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs1))
            {
                con.Open();

                SqlCommand cmd = new SqlCommand("Select * from MSFT", con);
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    sdr.Read();
                    int count = 0;
                    Double totalReturns = 0;
                    Double newPrice = new Double();
                    Double prevPrice = Convert.ToDouble(sdr["adjClose"]);
                    while (sdr.Read())
                    {
                        newPrice = Convert.ToDouble(sdr["adjClose"]);
                        Double newReturn = (newPrice - prevPrice) / prevPrice;
                        totalReturns += newReturn;
                        count++;
                    }
                    
                    Label3.Text = (totalReturns/count).ToString();
                    Label4.Text = newPrice.ToString();
                }


            }

        }




    }
}