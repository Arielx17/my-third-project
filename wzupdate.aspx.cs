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
    public partial class wzupdate : System.Web.UI.Page
    {
        public wzModel wzMana = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //如果点了更新按钮，下面代码不再执行
            //避免又重新取库的内容放到控件里
            if (!IsPostBack)
            {

                if (Request.QueryString["wzId"] != null)
                {
                    string wzId = Request.QueryString["wzId"].ToString();
                    string sql = "select * from t_zixun where wzId = " + wzId;
                    SqlDataReader sdr = SqlHelper.returnDataReader(sql, CommandType.Text, null);
                    while (sdr.Read())
                    {
                        wzMana = new wzModel();
                        wzMana.wzId = int.Parse(sdr["wzId"].ToString());
                        wzMana.wztitle = sdr["wztitle"].ToString();
                        wzMana.wzyi = sdr["wzyi"].ToString();
                        wzMana.wzer = sdr["wzer"].ToString();
                        wzMana.wzsan = sdr["wzsan"].ToString();
                        wzMana.wzauthor = sdr["wzauthor"].ToString();
                        ///
                    }
                    sdr.Close();
                    txttitle.Text = wzMana.wztitle;
                    txtp1.Text = wzMana.wzyi;
                    txtp2.Text = wzMana.wzer;
                    txtp3.Text = wzMana.wzsan;
                    txtauthor.Text = wzMana.wzauthor;
                }
                else
                {
                    Response.Redirect("wzmana.aspx");
                }
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            //建议用传参的做法，安全性要考虑
            string wzId = Request.QueryString["wzId"].ToString();
            string sql = "update t_zixun set wztitle=N'" + txttitle.Text + "',wzyi=N'" + txtp1.Text + "',wzer=N'" + txtp2.Text + "',wzsan=N'" + txtp3.Text + "',wzauthor=N'" + txtauthor.Text + "'where wzId=" + wzId;

            //补充成功或者失败的判断
            SqlHelper.ExecuteNonQuery(sql, CommandType.Text, null);

            Response.Redirect("wzmana.aspx");
        }
    }
}