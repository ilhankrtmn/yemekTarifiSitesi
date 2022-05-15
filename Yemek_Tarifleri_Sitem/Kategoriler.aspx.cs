using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Kategoriler : System.Web.UI.Page
{

    SqlSinif bgl = new SqlSinif();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Kategoriid"];
            islem = Request.QueryString["islem"];
        }

        SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());

        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();

        //Silme İşlemi
        if (islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("delete from Tbl_Kategoriler where kategoriid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }


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

    protected void BtnPanelAc2_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void BtnPanelKapat2_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) Values(@p1)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TxtAd.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}