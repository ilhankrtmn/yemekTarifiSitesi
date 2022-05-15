<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            background-color: #CCCCCC;
        }

        .auto-style3 {
            text-align: right;
        }

        .auto-style4 {
            font-size: large;
        }

        .auto-style5 {
            width: 244px;
        }

        .auto-style6 {
            text-align: right;
            width: 91px;
        }

        .auto-style7 {
            font-weight: bold;
            font-size: x-large;
        }

        .auto-style8 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
        }

        .auto-style9 {
            width: 43px;
        }

        .auto-style10 {
            width: 42px;
        }

        .auto-style11 {
            font-weight: bold;
            font-size: medium;
        }

        .auto-style12 {
            background-color: #CCCCCC;
            margin-top: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="BtnPanelAc" runat="server" CssClass="auto-style7" Height="30px" OnClick="BtnPanelAc_Click" Text="+" Width="30px" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="BtnPanelKapat" runat="server" CssClass="auto-style8" Height="30px" OnClick="BtnPanelKapat_Click" Text="-" Width="30px" />
                </strong></td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/ikonlar/delete.png" Width="30px" />
                            </a>
                        </td>
                        <td class="auto-style3">
                            <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/ikonlar/update.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style12">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="BtnPanelAc2" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="BtnPanelAc2_Click" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="BtnPanelKapat2" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="BtnPanelKapat2_Click" />
                </strong></td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD:&nbsp;</td>
                <td>
                    <asp:TextBox ID="TxtAd" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style11" Text="Ekle" Width="100px" OnClick="BtnEkle_Click" />
                </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

