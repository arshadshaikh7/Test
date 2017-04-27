<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>CompoMatrice</title>
    <link rel="stylesheet" type="text/css" href="abc/bootstrap.min.css" />
    
   <script src="abc/bootstrap.min.js"></script>

   <script type="text/javascript" src="abc/jquery.min.js"></script>

</script>

</head>
<body>

    <form id="form1" runat="server">
    <div class="container">
  <div class="jumbotron">
    <h2 align=center>Library Management</h2></div></div>
    <div align=center>
    
        <b>Book_Id :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Book_Id" runat="server"></asp:TextBox>
        <br />
        <br />
        <b>Book_Name :</b>
        <asp:TextBox ID="Book_Name" runat="server"></asp:TextBox>
        <br />
        <br />
        <b>Author :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Author" runat="server"></asp:TextBox>
        <br />
        <br />
        <b>Publisher :</b>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Publisher" runat="server"></asp:TextBox>
        <br />
        <br />
        <b>Price :</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Price" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Submit" runat="server" onclick="Button1_Click" Text="Submit" 
            BackColor="#009900" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Delete" runat="server" onclick="Button2_Click" Text="Delete" 
            BackColor="Red" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Update" runat="server" onclick="Button3_Click" Text="Update" 
            BackColor="Orange" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Reset" runat="server" onclick="Button4_Click" Text="Reset" 
            BackColor="White" />
        <br />
        <br /><div class="container"></div>
  <div class="page-header"><h1>Grid View : </h1></div>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Book_Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Book_Id" HeaderText="Book_Id" ReadOnly="True" 
                    SortExpression="Book_Id" />
                <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" 
                    SortExpression="Book_Name" />
                <asp:BoundField DataField="Author" HeaderText="Author" 
                    SortExpression="Author" />
                <asp:BoundField DataField="Publisher" HeaderText="Publisher" 
                    SortExpression="Publisher" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:libraryConnectionString %>" 
            DeleteCommand="DELETE FROM [Book_Demo] WHERE [Book_Id] = @Book_Id" 
            InsertCommand="INSERT INTO [Book_Demo] ([Book_Id], [Book_Name], [Author], [Publisher], [Price]) VALUES (@Book_Id, @Book_Name, @Author, @Publisher, @Price)" 
            SelectCommand="SELECT * FROM [Book_Demo]" 
            UpdateCommand="UPDATE [Book_Demo] SET [Book_Name] = @Book_Name, [Author] = @Author, [Publisher] = @Publisher, [Price] = @Price WHERE [Book_Id] = @Book_Id">
            <DeleteParameters>
                <asp:Parameter Name="Book_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Book_Id" Type="Int32" />
                <asp:Parameter Name="Book_Name" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Publisher" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Book_Name" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="Publisher" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Book_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
