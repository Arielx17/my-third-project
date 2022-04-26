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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }
        private void Bind()
        {
            String sql = "select * from t_goods";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            dlGoods.DataSource = ds.Tables["ds"];
            dlGoods.DataKeyField = "goodsId";
            dlGoods.DataBind();
        }

        protected void dlGoods_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                int id = (int)dlGoods.DataKeys[e.Item.ItemIndex];
                string sql = "update t_order set goodsNum=goodsNum+1 where goodsId=" + id;
                SqlHelper.ExecuteNonQuery(sql, CommandType.Text, null);
                Response.Write("<script>alert('加入购物车成功！')</script>");
            }
        }
    }
}