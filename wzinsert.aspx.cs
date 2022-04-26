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
    public partial class wzinsert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        //private void Bind()
        //{
        //    //先从配置文件拿到数据库连接字符串
        //    String connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;

        //    //通过连接字符串打开数据库
        //    SqlConnection conn = new SqlConnection(connStr);
        //    conn.Open();

        //    //先实例化一个数据库适配器
        //    //用来取数据库表的内容放到内存中
        //    SqlDataAdapter sda = new SqlDataAdapter();
        //    try
        //    {
        //        sda.SelectCommand = new SqlCommand();
        //        sda.SelectCommand.Connection = conn;
        //        /*sda.SelectCommand.CommandText = "select * from T_User";*///命令行的文本，得到数据库里T_User表数据
        //        sda.SelectCommand.CommandText = "select * from t_zixun ";
        //        sda.SelectCommand.CommandType = CommandType.Text;
        //        //数据库的命令类型，一般选择的就是Sql文本或存储过程

        //        //实例化要给数据集
        //        //可以把数据库适配器拿到的东西给到它
        //        //它里面可以对数据进行筛选跟排序，功能比较强大
        //        //大部分控件都支持直接把数据集作为数据源绑定
        //        DataSet ds = new DataSet();

        //        //把适配器取出来的表数据直接给到数据集内
        //        sda.Fill(ds, "t_zixun");

        //        //支持数据库绑定的控件都叫datasource
        //        //把数据集里指定的表直接给到控件的数据源
        //        gvUser.DataSource = ds.Tables["T_User"];
        //        gvUser.DataBind();
        //    }
        //    catch (SqlException ex)
        //    {

        //    }
        //    finally
        //    {
        //        conn.Close();//关闭数据库
        //    }


        //}

        protected void btn_add_Click(object sender, EventArgs e)
        {
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
                SqlParameter[] pars = new SqlParameter[6];
                pars[0] = new SqlParameter("@title", SqlDbType.NVarChar, 100);
                pars[0].Value = txttitle.Text;
                pars[1] = new SqlParameter("@p1", SqlDbType.NVarChar, 1000);
                pars[1].Value = txtp1.Text;
                pars[2] = new SqlParameter("@p2", SqlDbType.NVarChar, 1000);
                pars[2].Value = txtp2.Text;
                pars[3] = new SqlParameter("@p3", SqlDbType.NVarChar, 1000);
                pars[3].Value = txtp3.Text;
                pars[4] = new SqlParameter("@time", SqlDbType.DateTime);
                pars[4].Value = txttime.Text;
                pars[5] = new SqlParameter("@author", SqlDbType.NVarChar, 100);
                pars[5].Value = txtauthor.Text;

                cmd.Connection = conn;
                //cmd.CommandText = "insert into T_User(uName,uPwd,uSex) values('Tim','123','2')";
                cmd.CommandText = "insert into t_zixun values(@title,@p1,@p2,@p3,@time,@author)";//可以标点符号、中文
                cmd.CommandType = CommandType.Text;

                //把参数数组给到command对象的参数集合
                foreach (SqlParameter p in pars)
                {
                    cmd.Parameters.Add(p);
                }
               
                //执行代码，它会返回受影响的行数 insert/delete/updata
                cmd.ExecuteNonQuery();
                Response.Redirect("wzmana.aspx");

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