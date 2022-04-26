using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace web
{
    public partial class clockdetail : System.Web.UI.Page
    {
        public pubmodel pubs = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["pb_id"] != null)
            {
                string pb_id = Request.QueryString["pb_id"].ToString();
                string sql = "select * from t_Pub where pb_id=" + pb_id;
                SqlDataReader sdr = SqlHelper.returnDataReader(sql, CommandType.Text, null);
                while (sdr.Read())
                {
                    pubs = new pubmodel();
                    pubs.pb_id = int.Parse(sdr["pb_id"].ToString());
                    pubs.pb_title = sdr["pb_title"].ToString();
                    pubs.pb_detail = sdr["pb_detail"].ToString();
                    pubs.pb_author = sdr["pb_author"].ToString();
                    pubs.pb_time = Convert.ToDateTime(sdr["pb_time"].ToString());
                    pubs.pb_days = int.Parse(sdr["pb_days"].ToString());
                }
                sdr.Close();
            }
            else
            {
                Response.Redirect("clock.aspx");
            }
        }
    }
}