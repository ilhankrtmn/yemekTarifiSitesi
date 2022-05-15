<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style9 {
            width: 43px;
        }

        .auto-style7 {
            font-weight: bold;
            font-size: x-large;
        }

        .auto-style10 {
            width: 42px;
        }

        .auto-style8 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
        }

        .auto-style11 {
            width: 249px;
        }

        .auto-style12 {
            width: 79px;
            text-align: right;
        }

        .auto-style13 {
            text-align: right;
        }

        .auto-style25 {
            margin-top: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="BtnPanelAc" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="BtnPanelAc_Click" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="BtnPanelKapat" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="BtnPanelKapat_Click" />
                </strong></td>
                <td>ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <itemtemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">

                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Resimler/ikonlar/delete.png" Width="30px" />

                        </td>
                        <td class="auto-style13">

                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/ikonlar/update.png" Width="30px" />

                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style25">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="Button2_Click" />
                </strong></td>
                <td>ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="445px">
            <itemtemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style11">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style12">

                            <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/Resimler/ikonlar/delete.png" Width="30px" />

                        </td>
                        <td class="auto-style13">
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>">
                                <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/Resimler/ikonlar/update.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

