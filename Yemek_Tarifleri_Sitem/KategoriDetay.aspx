<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }

        .auto-style8 {
            background-color: #FFFFCC;
        }

        .auto-style5 {
            font-size: x-large;
            color: #FF5050;
        }

        .auto-style7 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="445px">
        <itemtemplate>
            <table class="auto-style4">
                <tr>
                    <td class="auto-style8"><strong><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi: </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi:</strong>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style7" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;<strong><em>Puan:</em></strong> <strong>
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style7"></asp:Label>
                            &nbsp; </strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;&nbsp;</td>
                </tr>
            </table>
        </itemtemplate>
    </asp:DataList>
</asp:Content>

