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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RemUser_Click(object sender, EventArgs e)
        {
            if (name.Text == string.Empty && pwd.Text == string.Empty)
            {
                /*ClientScript:往客户端发送脚本*/
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('不能为空')</script>");
            }
            else
            {
                string sql = "select userId from t_userInfo where userName='" + name.Text + "' and password='" + pwd.Text + "'";
                string uId = Convert.ToString(SqlHelper.ExecuteScalar(sql, CommandType.Text, null));
                if (uId != string.Empty)
                {
                    /*假设数据库验证通过了,就把用户名和密码存到Session*/
                    Session["name"] = name.Text;
                    Session["pwd"] = pwd.Text;

                    //跳转到主页
                    // Response.Redirect("index_user.aspx?uId=" + uId);
                    Response.Redirect("main.aspx");
                }
                else if (uId == string.Empty)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('账号或密码错误！')</script>");
                }
            }
        }
    }
}