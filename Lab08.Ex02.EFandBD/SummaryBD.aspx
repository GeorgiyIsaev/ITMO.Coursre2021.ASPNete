<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" Inherits="Lab01.Ex01.EmptyWebSite.SummaryBD" MasterPageFile="~/Site.Master"%>


<asp:Content  ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >

    <form id="form1" runat="server">

    <h2>Список участников</h2>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource2">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Имя" ReadOnly="True" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Телефон" ReadOnly="True" SortExpression="Phone" />
                <asp:CheckBoxField DataField="WillAttend" HeaderText="WillAttend" ReadOnly="True" SortExpression="WillAttend" />
                <asp:BoundField DataField="Rdata" HeaderText="Rdata" ReadOnly="True" SortExpression="Rdata" />
            </Columns>
        </asp:GridView>
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
        <Columns>
            <asp:BoundField DataField="PropId" HeaderText="Id" ReadOnly="True" SortExpression="PropId" />
            <asp:BoundField DataField="nCanonId" HeaderText="nCanonId" ReadOnly="True" SortExpression="nCanonId" />
            <asp:BoundField DataField="dtReportDate" HeaderText="Дата рапорта" ReadOnly="True" SortExpression="dtReportDate" />
            <asp:BoundField DataField="nTerOtdelenie" HeaderText="ТерОтделение" ReadOnly="True" SortExpression="nTerOtdelenie" />
            <asp:BoundField DataField="nTerPodrazdel" HeaderText="Терподразделение" ReadOnly="True" SortExpression="nTerPodrazdel" />
            <asp:BoundField DataField="vProcent" HeaderText="%" ReadOnly="True" SortExpression="vProcent" />
        </Columns>
    </asp:GridView>
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="PraktikaDBEntities" EntityTypeName=""  Select="new (PropId, nCanonId, dtReportDate, nTerOtdelenie, nTerPodrazdel, vProcent)" TableName="OurTable"></asp:LinqDataSource>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="SampleContext" EntityTypeName="" Select="new (Name, Email, Phone, WillAttend, Rdata, Reports)" TableName="GuestResponses">
        </asp:LinqDataSource>
    </form>

</asp:Content>





