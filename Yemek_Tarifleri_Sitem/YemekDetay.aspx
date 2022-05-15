<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: 30pt;
            color: #FFFFFF;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: xx-small;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            background-color: #FFFFCC;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            font-size: medium;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
    <br />
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #C0C0C0;">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <div class="auto-style8">Yorum Yapma Paneli</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><em><strong>Ad Soyad:</strong></em></td>
                <td>
                    <asp:TextBox ID="TxtAdSoyad" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><em><strong>Mail:</strong></em></td>
                <td>
                    <asp:TextBox ID="TxtMail" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><em><strong>Yorumunuz:</strong></em></td>
                <td>
                    <asp:TextBox ID="TxtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnGonder" runat="server" CssClass="auto-style10" OnClick="Button1_Click" Text="Yorum Yap" Width="200px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

