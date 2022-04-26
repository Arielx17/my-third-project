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
    public partial class clock : System.Web.UI.Page
    {
        public pubmodel pubs = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {
                Bind();
            }
               //string pb_id;
            
               // string sql = "select * from t_Pub where pb_id=" + pb_id;
               // SqlDataReader sdr = SqlHelper.returnDataReader(sql, CommandType.Text, null);
               // while (sdr.Read())
               // {
               //     pubs = new pubmodel();
               //     pubs.pb_id = int.Parse(sdr["pb_id"].ToString());
               //     pubs.pb_title = sdr["pb_title"].ToString();
               //     pubs.pb_detail = sdr["pb_detail"].ToString();
               //     pubs.pb_author = sdr["pb_author"].ToString();
               //     pubs.pb_time = Convert.ToDateTime(sdr["pb_time"].ToString());
               //     pubs.pb_days = int.Parse(sdr["pb_days"].ToString());
               // }
               // sdr.Close();

        }

        private void Bind()
        {
            String sql = "select * from t_Pub";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            pub_datalist.DataSource = ds.Tables["ds"];
            pub_datalist.DataBind();
        }

        protected void gotopub_Click(object sender, EventArgs e)
        {
            Response.Redirect("clockedit.aspx" );
        }
    }
}