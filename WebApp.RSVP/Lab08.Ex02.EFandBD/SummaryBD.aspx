<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SummaryBD.aspx.cs" Inherits="Lab01.Ex01.EmptyWebSite.SummaryBD" MasterPageFile="~/Site.Master"%>


<asp:Content  ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
        <h2>Список участников</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="LinqDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Имя" ReadOnly="True" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Телефон" ReadOnly="True" SortExpression="Phone" />
                <asp:CheckBoxField DataField="WillAttend" HeaderText="WillAttend" ReadOnly="True" SortExpression="WillAttend" />
                <asp:BoundField DataField="Rdata" HeaderText="Rdata" ReadOnly="True" SortExpression="Rdata" />
            </Columns>
        </asp:GridView>  
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Lab01.Ex01.EmptyWebSite.SampleContext" EntityTypeName="" Select="new (Name, Email, Phone, WillAttend, Rdata, Reports)" TableName="GuestResponses"> </asp:LinqDataSource>
</asp:Content>





