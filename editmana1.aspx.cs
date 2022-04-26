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
    public partial class editmana1 : System.Web.UI.Page
    {
        public GoodsModel Goods = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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

                    txtName.Text = Goods.GName;
                    txtPrice.Text = Goods.GPrice.ToString();
                    txtStock.Text = Goods.GStock.ToString();
                    txtInfo.Text = Goods.GInfo;
                    img.ImageUrl = "~" + Goods.GImage;
                }
                else
                {
                    Response.Redirect("editmana.aspx");
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["GId"] != null)
            {
                string GId = Request.QueryString["GId"].ToString();
                string Img = img.ImageUrl;
                string sql = "update t_goods set goodsName=N'" + txtName.Text + "',goodsPrice=" + Convert.ToSingle(txtPrice.Text) + ",goodsStock=" + int.Parse(txtStock.Text) + ",goodsInfo=N'" + txtInfo.Text + "',goodsImage=N'"+ Img.Substring(1, Img.Length-1) + "' where goodsId=" + GId;
                SqlHelper.ExecuteNonQuery(sql, CommandType.Text, null);
                Response.Redirect("editmana.aspx");
            }
            else
            {
                Response.Redirect("editmana.aspx");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var savePath = "";
            var result = IsUpload(ref savePath);
            if (result)
            {
                Response.Write("<script>alert('已上传')</script>");
            }
        }

        public bool IsUpload(ref string savePath)
        {
            if (imgUpload.HasFile)
            {
                //指定上传文件在服务器上的保存路径
                savePath = Server.MapPath("~/public/img");
                //检查服务器上是否存在这个物理路径，如果不存在则创建
                if (!System.IO.Directory.Exists(savePath))
                {
                    //需要注意的是，需要对这个物理路径有足够的权限，否则会报错
                    //另外，这个路径应该是在网站之下，而将网站部署在C盘却把上传文件保存在D盘
                    System.IO.Directory.CreateDirectory(savePath);
                }
                savePath = savePath + "/" + imgUpload.FileName;
                imgUpload.SaveAs(savePath);//保存文件
                img.ImageUrl = "~/public/img/" + imgUpload.FileName;


                return true;
            }
            else
            {
                return false;
            }
        }
    }   
}
