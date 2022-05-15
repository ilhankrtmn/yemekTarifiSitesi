<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList3" runat="server" Width="444px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" style="font-weight: 700; font-size: large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Malzemeler: </strong>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Tarif:</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="150px" ImageUrl='<%# Eval("YemekResim") %>' Width="344px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td style="text-align: left"><strong>Puan:</strong>&nbsp;<asp:Label ID="Label14" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    &nbsp;</td>
                                <td style="text-align: right"><strong>Eklenme Tarihi:</strong>&nbsp;<asp:Label ID="Label13" runat="server" style="font-style: italic" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

