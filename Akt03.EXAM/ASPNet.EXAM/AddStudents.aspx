
<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="AddStudents.aspx.cs" 
    Inherits="ASPNet.EXAM.AddStudents"
    MasterPageFile="~/Site.Master" %>


<asp:Content ID="MainContent"
    ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <div>
        <h1>Добавить нового студента</h1>
        <hr/>
         <div> 
            <asp:ValidationSummary ID="validationSummary" runat="server" ShowModelStateErrors="true" />
            <label>Имя студента:</label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="name"
                ErrorMessage="Заполните поле имени"                
                ForeColor="Red">Не оставляйте поле пустым
            </asp:RequiredFieldValidator>
        </div> 
        <div> 
            <label>Фамилия студента:</label>
            <asp:TextBox ID="surname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="surname" ErrorMessage="Заполните поле фамилии" 
                ForeColor="Red">Не оставляйте поле пустым
            </asp:RequiredFieldValidator>   
        </div> 
        <div> 
            <label>Группа студента:</label>
            <asp:TextBox ID="group" runat="server"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="group" 
                ErrorMessage="Заполните поле группы" 
                ForeColor="Red">Не оставляйте поле пустым
            </asp:RequiredFieldValidator>
        </div> 
        <div> 
            <label>Группа студента:</label>
            <asp:TextBox ID="averageMark" runat="server" OnKeyPress="EnsureNumeric()"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="averageMark" 
                ErrorMessage="Заполните поле отметки студента" 
                ForeColor="Red">Не оставляйте поле пустым
            </asp:RequiredFieldValidator>
        </div> 

    </div>
</asp:Content> 
