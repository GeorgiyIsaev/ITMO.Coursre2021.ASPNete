<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" Inherits="Lab01.Ex01.EmptyWebSite.SummaryBD" MasterPageFile="~/Site.Master"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> --%>
    <form id="form1" runat="server">
    <h2>Список участников</h2>


        <asp:GridView ID="GridView1" runat="server" Width="549px">
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server">
        </asp:LinqDataSource>
</form>



<%--</asp:Content> --%>

