<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            text-align: right;
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
                    <asp:Button ID="BtnPanelAc" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="BtnPanelAc_Click" Style="font-size: x-large" />
                </strong></td>
                <td class="auto-style9"><strong>
                    <asp:Button ID="BtnPanelKapat" runat="server" CssClass="auto-style10" Height="30px" Text="-" Width="30px" OnClick="BtnPanelKapat_Click" Style="font-size: x-large" />
                </strong></td>
                <td class="auto-style4">MESAJ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style2">
                            <a href="MesajDetay.aspx?Mesajid=<%#Eval("mesajid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/Resimler/ikonlar/okundu.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

