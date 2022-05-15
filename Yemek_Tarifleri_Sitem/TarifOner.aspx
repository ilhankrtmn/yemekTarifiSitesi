<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: right;
        }
        .auto-style6 {
            text-align: right;
            height: 29px;
        }
        .auto-style7 {
            text-align: left;
        }
        .auto-style8 {
            text-align: left;
            height: 29px;
        }
        .auto-style9 {
            margin-left: 50px;
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
            <td class="auto-style5">Tarif Ad:</td>
            <td class="auto-style7">
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="275px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Malzemeler:</td>
            <td class="auto-style7" style="margin-left: 40px">
                <asp:TextBox ID="TxtMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="275px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Yağılış:</td>
            <td class="auto-style7" style="margin-left: 40px">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="275px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Resim:</td>
            <td class="auto-style7" style="margin-left: 40px">
                <asp:FileUpload ID="FileTarifResim" runat="server" Width="275px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Tarif Öneren:</td>
            <td class="auto-style8" style="margin-left: 80px">
                <asp:TextBox ID="TxtTarif" runat="server" Width="275px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Mail Adresi:</td>
            <td class="auto-style7" style="margin-left: 80px">
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="275px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style7" style="margin-left: 80px">
                <asp:Button ID="BtnOner" runat="server" BackColor="Aqua" CssClass="fb8" Height="50px" style="font-style: italic; font-weight: 700" Text="Tarif Öner" Width="150px" OnClick="BtnOner_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

