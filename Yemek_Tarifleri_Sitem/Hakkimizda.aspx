<%@ Page Title="" Language="C#" MasterPageFile="~/Bin/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style5">
    <asp:DataList ID="DataList2" runat="server" Width="450px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>

    </div>

    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/Resimler/1.jpg" Width="450px" />
</asp:Content>

