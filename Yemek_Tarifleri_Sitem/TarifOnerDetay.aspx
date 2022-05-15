<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        
        .auto-style5 {
            width: 100%;
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
        .auto-style11 {
            text-align: right;
            height: 29px;
        }
        .auto-style12 {
            height: 29px;
        }
        .auto-style13 {
            font-size: medium;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="auto-style8">Yorum Yapma Paneli</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style5">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><em><strong>Tarifin Adı:</strong></em></td>
                <td>
                    <asp:TextBox ID="TxtAd" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><em><strong>Tarif Malzemeler:</strong></em></td>
                <td>
                    <asp:TextBox ID="TxtMalzeme" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><em><strong>Yapılış:</strong></em></td>
                <td>
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"><strong><em>Resim:</em></strong></td>
                <td class="auto-style12">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong><em>Tarif Öneren:</em></strong></td>
                <td>
                    <asp:TextBox ID="TxtOneren" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><strong><em>Öneren Mail:</em></strong></td>
                <td>
                    <asp:TextBox ID="TxtMail" runat="server" Height="20px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"><strong><em>Kategori:</em></strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style10" OnClick="BtnOnayla_Click" Text="Onayla" Width="200px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

