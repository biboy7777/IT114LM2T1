<%@ Page Language="C#" CodeBehind="~/Exercise2.aspx.cs" Inherits="Module1Exercise1.Exercise2" %>

<%-- Exercise 2: Exploring ASP.NET Form Controls --%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Festival Registration</title>
</head>
<body>
    <form runat="server">
    <h1>Malayan Music Festival Registration</h1>
        <%-- TODO 3.1 Create two text boxes for the first name and last name --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Text%20Boxes%20and%20Labels --%>
        <%--<asp:Label ID="firstNameLabel" runat="server" Text="First Name: "></asp:Label>--%>
        First Name: <asp:TextBox ID="firstNameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <%--<asp:Label ID="lastNameLabel" runat="server" Text="Last Name: "></asp:Label>--%>
        Last Name: <asp:TextBox ID="lastNameTextBox" runat="server"></asp:TextBox>
        <br />
        <br />
        <%-- Todo 3.2 Create a text box for inputting the age of the user. Make sure to set the TextMode to the proper value--%>
        <%--<asp:Label ID="ageLabel" runat="server" Text="Age: "></asp:Label>--%>
        Age: <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
        <br />
        <br />

        <%-- TODO 3.3 Create a DropDownList for the ticket type. It must have the following options: Starter, General Admissions, Gold, VIP --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=DropDownList --%>
        <asp:DropDownList ID="ticketTypeDdl" runat="server">
            <asp:ListItem Text="Pick a Ticket Type"></asp:ListItem>
            <asp:ListItem Text="Starter" Value="Starter"></asp:ListItem>
            <asp:ListItem Text="General Admissions" Value="General Admissions"></asp:ListItem>
            <asp:ListItem Text="Gold" Value="Gold"></asp:ListItem>
            <asp:ListItem Text="VIP" Value="VIP"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />

        <%-- TODO 3.4 Create a Radio Button List for selecing which days they are planning to attend. It must have following options: Day 1 Only, Day 2 Only, Both Day 1 and 2--%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.radiobuttonlist?view=netframework-4.8.1#:~:text=RadioButtonList%20id=%22RadioButtonList1%22 --%>
        Select which day/s to attend:
        <asp:RadioButtonList ID="daysToAttendRdl" runat="server">
            <asp:ListItem Text="Day 1 Only" Value="Day 1 Only"></asp:ListItem>
            <asp:ListItem Text="Day 2 Only" Value="Day 2 Only"></asp:ListItem>
            <asp:ListItem Text="Both Day 1 and Day 2" Value="Both Day 1 and Day 2 "></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />

        <%-- TODO 3.5 Create a Checkbox List for the performances they are planning to attend. List down your favorite arists for the options. --%>
        <%-- It must look something like --%>
        <%-- Which performances are you planning to attend? --%>
        <%-- <Artist Name 1> - [ ] --%>
        <%-- <Artist Name 2> - [x] --%>
        <%-- <Artist Name 3> - [ ] --%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.checkboxlist?view=netframework-4.8.1#:~:text=CheckBoxList%20id=%22checkboxlist1%22 --%>
        Which performances are you planning to attend?
        <asp:CheckBoxList ID="artistsCbl" runat="server">
            <asp:ListItem Text="Elvis Presley" Value="Elvis Presley"></asp:ListItem>
            <asp:ListItem Text="Freddie Mercury" Value="Freddie Mercury"></asp:ListItem>
            <asp:ListItem Text="Billy Joel" Value="Billy Joel"></asp:ListItem>
        </asp:CheckBoxList>
        <br />

        <%-- TODO 3.6 Create a FileUpload for their proof of payment. It must only accept JPG and PNG files. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_file_uploading.htm#:~:text=%3Ch3%3E%20File%20Upload:%3C/h3%3E --%>
        Proof of payment (put picture of proof of payment, must be jpg/png):
        <br />
        <asp:FileUpload ID="proofPaymentFileUpload" runat="server" accept=".jpg,.png"/>
        <br />
        <asp:Button ID="submitBtn" runat="server" Text="Submit" OnClick="submitBtn_Click"/>
        <br />
        <asp:Label ID="messageLbl" runat="server"/>
    </form>
</body>
</html>
