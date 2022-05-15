using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifOnerDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler where tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TxtAd.Text = oku[1].ToString();
                TxtMalzeme.Text = oku[2].ToString();
                TxtYapilis.Text = oku[3].ToString();
                TxtOneren.Text = oku[5].ToString();
                TxtMail.Text = oku[6].ToString();
            }
            bgl.baglanti().Close();
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

    }

    protected void BtnOnayla_Click(object sender, EventArgs e)
    {
        //Durum Güncelleme
        SqlCommand komut = new SqlCommand("update Tbl_Tarifler set tarifdurum=1 where tarifid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader oku = komut.ExecuteReader();
        bgl.baglanti().Close();

        SqlCommand komut2 = new SqlCommand("insert into Tbl_yemekler (yemekad,yemekmalzeme,yemektarif,kategoriid) " +
            "values (@p1,@p2,@p3,@p4) ", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", TxtAd.Text);
        komut2.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
        komut2.Parameters.AddWithValue("@p3", TxtYapilis.Text);
        komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();

        SqlCommand komut4 = new SqlCommand("update tbl_kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
        komut4.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut4.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}