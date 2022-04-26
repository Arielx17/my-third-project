
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
    public partial class clockedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void pub_btn_Click(object sender, EventArgs e)
        {
            string pb_detail = Request.Params["editorValue"];
            string date_timenow = DateTime.Now.ToLocalTime().ToString();
            string sql = "insert into t_Pub(pb_title,pb_author,pb_detail,pb_time,pb_days) values (N'" + txtTitle.Text + "',N'" + txtAuthor.Text + "',N'" + pb_detail + "' ,N'" + date_timenow + "'   ,N'" + txtDays.Text + "'   ) " +
                "select @@IDENTITY";
            //ExecuteScalar返回第一个返回值
            int pb_id = Convert.ToInt32(SqlHelper.ExecuteScalar(sql, CommandType.Text, null));//(int)强制类型转换无法编译
            Response.Write(pb_id);
            Response.Redirect("clockdetail.aspx?pb_id=" + pb_id);

        }
    }
}