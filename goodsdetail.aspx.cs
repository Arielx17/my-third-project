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
    public partial class goods1 : System.Web.UI.Page
    {
        public GoodsModel Goods = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["GId"] != null)
            {
                string GId = Request.QueryString["GId"].ToString();
                string sql = "select * from t_goods where goodsId=" + GId;
                SqlDataReader sdr = SqlHelper.returnDataReader(sql, CommandType.Text, null);
                while (sdr.Read())
                {
                    Goods = new GoodsModel();
                    Goods.GId = int.Parse(sdr["goodsId"].ToString());
                    Goods.GName = sdr["goodsName"].ToString();
                    Goods.GPrice = Convert.ToSingle(sdr["goodsPrice"].ToString());
                    Goods.GStock = int.Parse(sdr["goodsStock"].ToString());
                    Goods.GInfo = sdr["goodsInfo"].ToString();
                    Goods.GImage = sdr["goodsImage"].ToString();
                }
                sdr.Close();
            }
            else
            {
                Response.Redirect("allgoods.aspx");
            }
        }
        private void Bind()
        {
            string sql = "select * from t_goods ";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["GId"]);
            int num1 = int.Parse(num.Text);
            string sql = "update t_order set goodsNum=goodsNum+" + num1 + " where goodsId=" + id;
            SqlHelper.ExecuteNonQuery(sql, CommandType.Text, null);
            Response.Write("<script>alert('加入购物车成功！')</script>");
        }
    }
}