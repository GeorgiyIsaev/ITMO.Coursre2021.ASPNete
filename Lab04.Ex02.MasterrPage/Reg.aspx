<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="Lab01.Ex01.EmptyWebSite.Reg"  MasterPageFile="~/Site.Master"%>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div>
        <div> 
            <h1>Приглашаем на семинар</h1> <p></p> </div>
        <div> 
            <label>Ваше имя:</label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
        </div> 
        <div> 
            <label>Ваш email:</label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div> 
        <div> 
            <label>Ваш телефон:</label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> 
        </div> 
        <div> 
            <label>Вы будете делать доклад?</label> 
            <asp:CheckBox ID="CheckBox1" runat="server" /> 
        </div>
        <div>
            <button type="submit">Отправить ответ на приглашение RSVP</button>
        </div>
    </div>
</asp:Content>


