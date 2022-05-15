<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            text-align: right;
        }
        .auto-style5 {
            height: 29px;
            text-align: right;
        }
        .auto-style6 {
            height: 29px;
            margin-left: 40px;
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
            <td class="auto-style5"><em><strong>Ad Soyad:</strong></em></td>
            <td class="auto-style3">
                <asp:TextBox ID="TxtAdSoyad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><em><strong>Mail Adresi:</strong></em></td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtMail" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><em><strong>İçerik:</strong></em></td>
            <td class="auto-style2">
                <asp:TextBox ID="Txticerik" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><em><strong>Yemek:</strong></em></td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtYemek" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="BtnOnayla" runat="server" OnClick="BtnOnayla_Click" Text="Onayla" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>

