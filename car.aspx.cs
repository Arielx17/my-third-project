using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;//读取配置文件相关

namespace web
{
    public partial class car : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Binduser();
                Bindcar();
            }
        }
        private void Bindcar()
        {
            String sql = "select t_goods.*,t_order.* from t_goods,t_order where t_order.goodsId = t_goods.goodsId";
            //String sql = "select * from t_order";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            shoppingcar.DataSource = ds.Tables["ds"];
            shoppingcar.DataBind();
        }
        private void Binduser()
        {
            String sql = "select * from t_userInfo where userId=6";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            user.DataSource = ds.Tables["ds"];
            user.DataBind();
        }

        protected void ok_Click(object sender, EventArgs e)
        {
            string sql = "select * from t_userInfo where userId=6";
            SqlDataReader uId = SqlHelper.returnDataReader(sql, CommandType.Text, null);
            while (uId.Read())
            {
                int id = int.Parse(uId["userId"].ToString());
                string uaddress = uId["rAddress"].ToString();
                string uname = uId["rName"].ToString();
                string uphone = uId["phoneNum"].ToString();

                if (id != 0)
                {
                    if (address.Checked == true)
                    {
                        a.Text = uaddress;
                        n.Text = uname;
                        p.Text = uphone;
                    }
                }
            }
            uId.Close();
            
        }

        protected void submit1_Click(object sender, EventArgs e)
        {
            //将订单提交到订单管理表
            //string sql = "insert into t_ordermana values('" +"'N'"+ n.Text + "'," +"'N'"+ p.Text + ",'" + "'N'" + a.Text + "','" + "'N'" + a.Text + "')";
            //string sql = "insert into t_ordermana values('"+ n.Text + "'," + p.Text + ",'" + a.Text + "','" + a.Text + "')";
            //string id = Convert.ToString(SqlHelper.ExecuteScalar(sql, CommandType.Text, null));
            //ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('提交成功" + id + "')</script>");
            //Response.Redirect("main.aspx");
            //先从配置文件拿到数据库连接字符串
            String connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

            //通过连接字符串打开数据库
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();

            //实例化一个数据库命令对象
            SqlCommand cmd = new SqlCommand();

            try
            {
                //初始化数据库参数按钮
                SqlParameter[] pars = new SqlParameter[4];
                pars[0] = new SqlParameter("@title", SqlDbType.NVarChar, 255);
                pars[0].Value = n.Text;
                pars[1] = new SqlParameter("@p1", SqlDbType.VarChar, 255);
                pars[1].Value = p.Text;
                pars[2] = new SqlParameter("@p2", SqlDbType.NVarChar, 255);
                pars[2].Value = a.Text;
                pars[3] = new SqlParameter("@p3", SqlDbType.NVarChar, 255);
                pars[3].Value = a.Text;

                cmd.Connection = conn;
                //cmd.CommandText = "insert into T_User(uName,uPwd,uSex) values('Tim','123','2')";
                cmd.CommandText = "insert into t_ordermana values(@title,@p1,@p2,@p3)";//可以标点符号、中文
                cmd.CommandType = CommandType.Text;

                //把参数数组给到command对象的参数集合
                foreach (SqlParameter p in pars)
                {
                    cmd.Parameters.Add(p);
                }

                //执行代码，它会返回受影响的行数 insert/delete/updata
                cmd.ExecuteNonQuery();
                Response.Redirect("main.aspx");

                //Bind();
            }
            catch (SqlException ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('失败！')</script>");
            }
            finally
            {
                conn.Close();
            }

        }
    
    }
}