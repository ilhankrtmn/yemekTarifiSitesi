using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Yorumlar : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Onaylı Yorumlar
        SqlCommand komut = new SqlCommand("Select * From Tbl_Yorumlar where yorumonay=1", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();

        //Onaysız Yorumlar
        SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where yorumonay=0", bgl.baglanti());
        SqlDataReader oku2 = komut2.ExecuteReader();
        DataList2.DataSource = oku2;
        DataList2.DataBind();

        Panel2.Visible = false;
        Panel4.Visible = false;
    }

    protected void BtnPanelAc_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void BtnPanelKapat_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }
}