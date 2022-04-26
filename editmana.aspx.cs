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
    public partial class editmana : System.Web.UI.Page
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
            dlEdit.DataSource = ds.Tables["ds"];
            dlEdit.DataKeyField ="goodsId";
            dlEdit.DataBind();
        }

        protected void dlEdit_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                int id = (int)dlEdit.DataKeys[e.Item.ItemIndex];
                string sql = "delete from t_goods where goodsId=" + id;
                SqlHelper.ExecuteNonQuery(sql, CommandType.Text, null);
                Response.Write("<script>alert('删除成功！')</script>");

                dlEdit.DataBind();
                Response.Redirect("editmana.aspx");
            }
        }
    }
}