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
    public partial class manalogin : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["name"] != null)
                {
                    txtManaName.Text = Request.Cookies["name"].Value;
                    txtManaPwd.Text = Request.Cookies["pwd"].Value;
                }
            }
        }
        protected void btnRem_Click(object sender, EventArgs e)
        {
            //String username = txtManaName.Text;
            //String userpwd = txtManaPwd.Text;
            string sql = "select userId from t_usermana where userName=N'" + txtManaName.Text + "' and password=N'" + txtManaPwd.Text + "'";
            string uId = Convert.ToString(SqlHelper.ExecuteScalar(sql, CommandType.Text, null));
            Response.Write(uId);
            if (check.Checked == true)
            {
                if (txtManaName.Text == string.Empty && txtManaPwd.Text == string.Empty)
                {
                    /*ClientScript:往客户端发送脚本*/
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('不能为空')</script>");
                }
                else if (uId != string.Empty)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('登录成功')</script>");
                    //假设数据库验证通过后
                    //把用户名跟密码放进session里  
                    Response.Cookies["name"].Value = txtManaName.Text;
                    Response.Cookies["pwd"].Value = txtManaPwd.Text;
                    Session["userName"] = txtManaName.Text;
                    Session["userPwd"] = txtManaPwd.Text;
                    Response.Redirect("usermana.aspx");
                    //设置过期时间为7天
                    Response.Cookies["name"].Expires = DateTime.Now.AddDays(7);
                    Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(7);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('用户名或者密码错误')</script>");
                }
            }
            else
            {
                if (txtManaName.Text == string.Empty && txtManaPwd.Text == string.Empty)
                {
                    /*ClientScript:往客户端发送脚本*/
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('不能为空')</script>");
                }
                else if (uId != string.Empty)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('登录成功')</script>");
                    Response.Redirect("usermana.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('用户名或者密码错误')</script>");
                }
            }
        }
    
    }
}