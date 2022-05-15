using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YorumDetay : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["yorumid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select Yorumadsoyad,YorumMail,Yorumicerik,YemekAd From Tbl_Yorumlar" +
            " inner join tbl_yemekler on tbl_yorumlar.yemekid=tbl_yemekler.yemekid where yorumid=@p1 ", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TxtAdSoyad.Text = oku[0].ToString();
                TxtMail.Text = oku[1].ToString();
                Txticerik.Text = oku[2].ToString();
                TxtYemek.Text = oku[3].ToString();
            }
            bgl.baglanti().Close();
        }
    }

    protected void BtnOnayla_Click(object sender, EventArgs e)
    {
        SqlCommand komut2 = new SqlCommand("update tbl_yorumlar set yorumicerik=@p1,yorumonay=@p2 " +
            "where yorumid=@p3", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", Txticerik.Text);
        komut2.Parameters.AddWithValue("@p2", "true");
        komut2.Parameters.AddWithValue("@p3", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}