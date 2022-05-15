using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class GununYemegiAdmin : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
        Panel2.Visible = false;
    }

    protected void BtnPanelAc_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void BtnPanelKapat_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
}