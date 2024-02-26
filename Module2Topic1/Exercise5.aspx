<%@ Page Language="C#" CodeBehind="~/Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise4" MasterPageFile="~/exc5.Master" %>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>REFLECTION:</h2>
    <h3>How would you compare plain HTML to ASP.NET WebForms?</h3>
    <p>
        Based on what I have understood so far, One major difference I found is that the level of interactivity between plain HTML and ASP.NET WebForms is very different. 
        With plain HTML, web pages are static and don't have much interactivity beyond basic links and forms. 
        ASP.NET WebForms, however, provides a set of server-side controls and event-driven programming model that allows for the creation of highly interactive web applications.
        Furthermore, in plain HTML, the focus tends to be more on the design and layout of its contents
        while in ASP.NET, it encourages programmers to quickly assemble dynamic web pages, especially with the help of the UI.
    </p>
    <h3>The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples.</h3>
    <p>

        At first, I really thought that both share the same purpose in terms of usage but I realized that there is actually difference between the two.
        The difference lies on the specific task and context that you want to do. Personally, I would use C# code when I have to perform server-side operations (like interacting with a database, processing form data, etc.).
        For example, when creating a web form for a user registration and you want to validate the user input if it already exists in the database containing the used usernames, I would use C# code to run queries and perform validation for it.
        On the other hand, I would use JavaScript when I have to perform client-side operations (like DOM manipulations, handling user interactions, enhancing the user interface with dynamic behavior, etc.).
        An example of me using this is when you want to validate a form without the need of reloading the website, I would use JavaScript to handle these interactions.
    </p>
    <h3>Explain what post backs are.</h3>
    <p>
        Based on my understanding, a postback is a concept that relates to how information is sent from a web page back to the server for processing.
        This means that when the user interacts with something on the web page, the entire page is sent back to the server, including any data entered by the user, to be processed by the server-side code..
    </p>
</asp:Content>