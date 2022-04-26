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
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                Bind();
                userBind();
        }

        private void Bind()
        {
            String sql = "select t_goods.* from t_goods,t_order where t_order.goodsId = t_goods.goodsId";
            //String sql = "select * from t_order";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            orders.DataSource = ds.Tables["ds"];
            orders.DataBind();
        }

        private void userBind()
        {
            String sql = "select userName from t_userInfo where userId=6";
            //String sql = "select * from t_order";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            username.DataSource = ds.Tables["ds"];
            username.DataBind();
        }

        //private void orders_DeleteCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)

        //{
        //    int id = int.Parse(orders.DataKeys[e.Item.ItemIndex].ToString());
        //    String sql = "delete * from t_order where orderId=" + id;
        //    DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
        //    orders.DataSource = ds.Tables["ds"];
        //    orders.DataBind();
        //}

    }
}