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
    public partial class update : System.Web.UI.Page
    {
        public UserModel UserMana = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //如果点了更新按钮，下面代码不再执行
            //避免又重新取库的内容放到控件里
            if (!IsPostBack)
            {

                if (Request.QueryString["userId"] != null)
                {
                    string userId = Request.QueryString["userId"].ToString();
                    string sql = "select * from t_usermana where userId = " + userId;
                    SqlDataReader sdr = SqlHelper.returnDataReader(sql, CommandType.Text, null);
                    while (sdr.Read())
                    {
                        UserMana = new UserModel();
                        UserMana.userId = int.Parse(sdr["userId"].ToString());
                        UserMana.userName = sdr["userName"].ToString();
                        UserMana.password = sdr["password"].ToString();
                        UserMana.type = sdr["type"].ToString();                 
                        ///
                    }
                    sdr.Close();
                    txtUserName.Text = UserMana.userName;
                    txtUserPwd.Text = UserMana.password;
                    txtUserType.Text = UserMana.type;

                }
                else
                {
                    Response.Redirect("usermana.aspx");
                }
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            
            //建议用传参的做法，安全性要考虑
            string userId = Request.QueryString["userId"].ToString();
            string sql = "update t_usermana set userName=N'" + txtUserName.Text + "',password=N'" + txtUserPwd.Text + "',type=N'" + txtUserType.Text + "'where userId=" + userId;
           
            //补充成功或者失败的判断
            SqlHelper.ExecuteNonQuery(sql, CommandType.Text, null);
            
            Response.Redirect("usermana.aspx");
        }
    }
}