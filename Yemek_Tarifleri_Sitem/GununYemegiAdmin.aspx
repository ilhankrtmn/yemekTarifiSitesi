<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

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
            width: 353px;
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

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="BtnPanelAc" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="BtnPanelAc_Click"/>
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="BtnPanelKapat" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="BtnPanelKapat_Click" />
                </strong></td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style3">
                            <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/ikonlar/seçmek.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

