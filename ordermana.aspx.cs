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
    public partial class ordermana : System.Web.UI.Page
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
            String sql = "select * from t_ordermana";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            gvOrderMana.DataSource = ds.Tables["ds"];
            //告诉gvnews现在的关键字在哪一列
            //后面删除用
            gvOrderMana.DataKeyNames = new string[] { "orderId" };
            gvOrderMana.DataBind();
        }

        protected void gvOrderMana_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //获得之前设置的关键字到表里的新闻id
            //e.RowIndex代表当前
            string orderId = gvOrderMana.DataKeys[e.RowIndex].Value.ToString();
            string sql = "delete from t_ordermana where orderId = " + orderId;
            try
            {
                SqlHelper.ExecuteNonQuery(sql, CommandType.Text, null);
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('已删除。')</script>");
                Bind();
            }
            catch
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('删除失败！')</script>");
            }
            finally
            {

            }
        }

        protected void gvOrderMana_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    ((LinkButton)e.Row.Cells[4].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('确定删除？')");
                }
            }
        }

        protected void gvOrderMana_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //把gv的页码更新为新点击页的页码索引
            gvOrderMana.PageIndex = e.NewPageIndex;
            //然后重新绑定数据
            Bind();
        }

       
    }
}