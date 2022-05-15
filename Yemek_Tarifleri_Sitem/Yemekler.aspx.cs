using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Yemekler : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();

    string islem = "";
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        Panel2.Visible = false;
        Panel4.Visible = false;
        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["Yemekid"];
            islem = Request.QueryString["islem"];
        }

        if (Page.IsPostBack == false)
        {
            //Kategori Listesi
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "Kategoriid";
            DropDownList1.DataSource = oku2;
            DropDownList1.DataBind();
        }
        //Yemek Listesi
        SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", bgl.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();

        if (islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("delete from Tbl_Yemekler where yemekid=@p1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@p1", id);
            komutsil.ExecuteNonQuery();
            SqlCommand komut4 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet-1 where kategoriid=@p1", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut4.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
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
        //Yemek Ekleme
        SqlCommand komut3 = new SqlCommand("insert into Tbl_Yemekler (Yemekad,YemekMalzeme,YemekTarif,Kategoriid) " +
            "Values(@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", TxtAd.Text);
        komut3.Parameters.AddWithValue("@p2", TxtMalzemeler.Text);
        komut3.Parameters.AddWithValue("@p3", TxtTarif.Text);
        komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();


        //Kategori sayısını arttırma
        SqlCommand komut4 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
        komut4.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut4.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}