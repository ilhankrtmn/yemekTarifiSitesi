using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
public class SqlSinif
{
    public SqlConnection baglanti()
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-2TID50O\SQLEXPRESS;Initial Catalog=Dbo_yemektarifi;Integrated Security=True");
        baglanti.Open();
        return baglanti;
    }
}