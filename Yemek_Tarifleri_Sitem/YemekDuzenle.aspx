<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            text-align: right;
            font-size: large;
        }
        .auto-style4 {
            font-weight: bold;
            font-size: large;
            background-color: #66FFFF;
        }
        .auto-style5 {
            text-align: left;
            margin-left: 40px;
        }
        
    .auto-style6 {
        font-weight: bold;
        font-size: large;
        background-color: #C0C0C0;
    }
        
        .auto-style7 {
            text-align: right;
            font-size: medium;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Yemek Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarif" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"><strong>Kategori:</strong></td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Yemek Görüntü:</strong></td>
            <td class="auto-style2">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5"><strong>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style4" Text="Güncelle" Width="250px" OnClick="BtnGuncelle_Click" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2"><strong>
                <asp:Button ID="BtnGununYemegi" runat="server" CssClass="auto-style6" Height="40px" Text="Günün Yemeği Seç" Width="250px" OnClick="BtnGununYemegi_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

