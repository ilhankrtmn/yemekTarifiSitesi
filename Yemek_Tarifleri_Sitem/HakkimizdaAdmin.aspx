<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            background-color: #CCCCCC;
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
        font-size: large;
    }
    .auto-style12 {
        text-align: center;
    }
    .auto-style13 {
        font-style: italic;
    }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9"><strong>
                    <asp:Button ID="BtnPanelAc" runat="server" CssClass="auto-style7" Height="30px" Text="+" Width="30px" OnClick="BtnPanelAc_Click" />
                </strong></td>
                <td class="auto-style10"><strong>
                    <asp:Button ID="BtnPanelKapat" runat="server" CssClass="auto-style8" Height="30px" Text="-" Width="30px" OnClick="BtnPanelKapat_Click" />
                </strong></td>
                <td>HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style1">
            <tr>
                <td><em>
                    <asp:TextBox ID="TxtHakkinda" runat="server" CssClass="auto-style13" Height="250px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    </em></td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>
                    <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style11" Text="Güncelle" Width="200px" OnClick="BtnGuncelle_Click" />
                    </strong></td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>

