<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
           
        }
        .auto-style111 {
            text-align: right;
            margin-top:20px;
        }

        .auto-style3 {
            width: 327px;
        }

        .auto-style4 {
            text-align: left;
        }

        .auto-style7 {
            text-align: left;
            width: 52px;
            font-weight: bold;
        }

        .auto-style8 {
            text-align: left;
            width: 51px;
        }

        .auto-style9 {
            text-align: left;
            width: 48px;
        }

        .auto-style10 {
            text-align: left;
            width: 51px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Button ID="BtnPanelAc" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" Style="font-size: x-large" OnClick="BtnPanelAc_Click" />
                </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="BtnPanelKapat" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="30px" Style="font-size: x-large" OnClick="BtnPanelKapat_Click" />
                </strong></td>
                <td class="auto-style4">ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/ikonlar/oneri.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style111">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" Style="font-size: x-large" OnClick="Button1_Click" />
                </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="30px" Style="font-size: x-large" OnClick="Button2_Click" />
                </strong></td>
                <td class="auto-style4">ONAYLI TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/ikonlar/oneri.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

