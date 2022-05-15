﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifOner : System.Web.UI.Page
{
    SqlSinif bgl = new SqlSinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnOner_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler(TarifAd,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)",bgl.baglanti());
        komut.Parameters.AddWithValue("@t1", TxtTarifAd.Text);
        komut.Parameters.AddWithValue("@t2", TxtMalzeme.Text);
        komut.Parameters.AddWithValue("@t3", TxtYapilis.Text);
        komut.Parameters.AddWithValue("@t4", FileTarifResim.FileName);
        komut.Parameters.AddWithValue("@t5", TxtTarif.Text);
        komut.Parameters.AddWithValue("@t6", TxtMail.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Tarifiniz alınmıştır.");

    }
}