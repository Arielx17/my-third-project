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
    
    public partial class orderupdate : System.Web.UI.Page
    {
        public OrderModel OrderMana = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //如果点了更新按钮，下面代码不再执行
            //避免又重新取库的内容放到控件里
            if (!IsPostBack)
            {

                if (Request.QueryString["orderId"] != null)
                {
                    string orderId = Request.QueryString["orderId"].ToString();
                    string sql = "select * from t_ordermana where orderId = " + orderId;
                    SqlDataReader sdr = SqlHelper.returnDataReader(sql, CommandType.Text, null);
                    while (sdr.Read())
                    {
                        OrderMana = new OrderModel();
                        OrderMana.orderId = int.Parse(sdr["orderId"].ToString());
                        OrderMana.userName = sdr["userName"].ToString();
                        OrderMana.userPhone = sdr["userPhone"].ToString();
                        OrderMana.userAddress = sdr["userAddress"].ToString();
                        OrderMana.orderGoods = sdr["orderGoods"].ToString();
                        ///
                    }
                    sdr.Close();
                    txtGetName.Text = OrderMana.userName;
                    txtGetNum.Text = OrderMana.userPhone;
                    txtGetAdr.Text = OrderMana.userAddress;
                    txtOrder.Text = OrderMana.orderGoods;

                }
                else
                {
                    Response.Redirect("ordermana.aspx");
                }
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            //建议用传参的做法，安全性要考虑
            string orderId = Request.QueryString["orderId"].ToString();
            string sql = "update t_ordermana set userName=N'" + txtGetName.Text + "',userPhone=N'" + txtGetNum.Text + "',userAddress=N'" + txtGetAdr.Text + "',orderGoods=N'" + txtOrder.Text + "'where orderId = " + orderId;

            //补充成功或者失败的判断
            SqlHelper.ExecuteNonQuery(sql, CommandType.Text, null);

            Response.Redirect("ordermana.aspx");
        }
    }
}