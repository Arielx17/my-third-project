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
    public partial class wzmana : System.Web.UI.Page
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
            String sql = "select * from t_zixun";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            gvWenzhang.DataSource = ds.Tables["ds"];
            //告诉gvnews现在的关键字在哪一列
            //后面删除用
            gvWenzhang.DataKeyNames = new string[] { "wzId" };
            gvWenzhang.DataBind();
        }

        protected void gvWenzhang_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //获得之前设置的关键字到表里的新闻id
            //e.RowIndex代表当前
            string wzId = gvWenzhang.DataKeys[e.RowIndex].Value.ToString();
            string sql = "delete from t_zixun where wzId = " + wzId;
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

        protected void gvWenzhang_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
                {
                    ((LinkButton)e.Row.Cells[3].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('确定删除？')");
                }
            }
        }

        protected void gvWenzhang_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //把gv的页码更新为新点击页的页码索引
            gvWenzhang.PageIndex = e.NewPageIndex;
            //然后重新绑定数据
            Bind();
        }

        
    }
}