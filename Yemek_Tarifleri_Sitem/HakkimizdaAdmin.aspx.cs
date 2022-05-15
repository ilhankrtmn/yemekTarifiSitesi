using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class HakkimizdaAdmin : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;


        if (Page.IsPostBack==false)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Hakkimizda", bgl.baglanti());

            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
                TxtHakkinda.Text = oku[0].ToString();
            }
            bgl.baglanti().Close();
        }
        
    }

    protected void BtnPanelKapat_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void BtnPanelAc_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update tbl_hakkimizda set metin=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TxtHakkinda.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}