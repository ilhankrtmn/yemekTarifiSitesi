using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDuzenle : System.Web.UI.Page
{

    SqlSinif bgl = new SqlSinif();
    string id="";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TxtAd.Text = oku[1].ToString();
                TxtMalzeme.Text = oku[2].ToString();
                TxtTarif.Text = oku[3].ToString();
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


    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/Resimler/" + FileUpload1.FileName));


        SqlCommand komut = new SqlCommand("update tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p4,yemekresim=@p5" +
            " where yemekid=@p6", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TxtAd.Text);
        komut.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
        komut.Parameters.AddWithValue("@p3", TxtTarif.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", "~/Resimler/"+FileUpload1.FileName);
        komut.Parameters.AddWithValue("@p6", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


    }

    protected void BtnGununYemegi_Click(object sender, EventArgs e)
    {
        //Tüm yemeklerin durumunu false yaptık.
        SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0", bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        //Günün yemeği için id ye göre durumu true yapma
        SqlCommand komut2 = new SqlCommand("update tbl_yemekler set durum=1 where yemekid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1",id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}
