<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Index.aspx.vb" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Stylesheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
  
    
     <h1>
        Wicked Easy Recipes
</h1>
<h2>
    Using 5 Ingredients or Less!
</h2>
   
        <p>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Index.aspx">Home</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
</p>
        <table>
        
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [djleslie-HW6_recipes] WHERE [RecipeID] = @RecipeID" InsertCommand="INSERT INTO [djleslie-HW6_recipes] ([RecipeName], [SubmittedBy]) VALUES (@RecipeName, @SubmittedBy)" SelectCommand="SELECT [RecipeID], [RecipeName], [SubmittedBy] FROM [djleslie-HW6_recipes]" UpdateCommand="UPDATE [djleslie-HW6_recipes] SET [RecipeName] = @RecipeName, [SubmittedBy] = @SubmittedBy WHERE [RecipeID] = @RecipeID">
            <DeleteParameters>
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
   
        <asp:GridView ID="GridView1" runat="server" 
            CssClass="Gridview1"
            AutoGenerateColumns="False" 
            DataKeyNames="RecipeID" 
            DataSourceID="SqlDataSource1">
            
            <Columns>
                <asp:BoundField DataField="RecipeName" HeaderText="RecipeName" SortExpression="RecipeName" />
                <asp:BoundField DataField="SubmittedBy" HeaderText="SubmittedBy" SortExpression="SubmittedBy" />
                <asp:HyperLinkField DataNavigateUrlFields="RecipeID" DataNavigateUrlFormatString="ViewAllRecipes.aspx?RecipeID={0}" Text="Select" />
            </Columns>
        </asp:GridView>

       </table>
    
    </form>
    
</body>
</html>
