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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            //调用帮助类里的方法
            string sql = "insert into t_userInfo values(@userName,@password,@phoneNum,@email,@rName,@rAddress)";
            SqlParameter[] pars = new SqlParameter[6];
            pars[0] = SqlHelper.MakeParam("@userName", SqlDbType.NVarChar, 50, name.Text);
            pars[1] = SqlHelper.MakeParam("@password", SqlDbType.NVarChar, 50, pwd.Text);
            pars[2] = SqlHelper.MakeParam("@phoneNum", SqlDbType.VarChar, 20, phone.Text);
            pars[3] = SqlHelper.MakeParam("@email", SqlDbType.VarChar, 255, email.Text);
            pars[4] = SqlHelper.MakeParam("@rName", SqlDbType.NVarChar, 50, rName.Text);
            pars[5] = SqlHelper.MakeParam("@rAddress", SqlDbType.NVarChar, rAdd.Text);

            try
            {
                SqlHelper.ExecuteNonQuery(sql, CommandType.Text, pars);
                Response.Redirect("login.aspx");//跳转到登录页
            }
            catch (SqlException)
            {

            }
        }
    }
}