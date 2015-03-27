<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New</title>
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
         
        <br />
        &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Index.aspx">Home</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
        <br />
        &nbsp;<br />
  
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [djleslie-HW6_recipes] WHERE [RecipeID] = @RecipeID" InsertCommand="INSERT INTO [djleslie-HW6_recipes] ([RecipeName], [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Preparation], [Notes]) VALUES (@RecipeName, @SubmittedBy, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [djleslie-HW6_recipes]" UpdateCommand="UPDATE [djleslie-HW6_recipes] SET [RecipeName] = @RecipeName, [SubmittedBy] = @SubmittedBy, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [RecipeID] = @RecipeID">
         
             <DeleteParameters>
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RecipeName" Type="String" />
                <asp:Parameter Name="SubmittedBy" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="RecipeID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="RecipeID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
              
            </EditItemTemplate>
            <InsertItemTemplate>  
              
           <table>        
                    <tr>
                        <td>
                            RecipeName:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RecipeName") %>' />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="Rfv_Name" runat="server" ErrorMessage="Need Name" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                <tr>
                    <td>
                        SubmittedBy:
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("SubmittedBy") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="Rfv_Submitted" runat="server" ErrorMessage="Who submitted" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </td>
                    

                </tr>
                <tr>
                    <td>
                        Ingredient1:

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ingredient1") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="Rfv_Ingredient" runat="server" ErrorMessage="Need 1 ingredient" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            <tr>
                <td>
                    Ingredient2:
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Ingredient2") %>' />
                </td>
            </tr>
                 <tr>
                     <td>
                         Ingredient3:
                     </td>
                     <td>
                          <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Ingredient3") %>' />
                     </td>
                    </tr>
                 <tr>
                     <td>
                         Ingredient4:
                     </td>
                     <td>
                          <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Ingredient4") %>' />
                     </td>
                 </tr>    
               <tr>
                   <td>
                       Ingredient5:
                   </td>
                   <td>
                         <asp:TextBox ID="Ingredient5TextBox" runat="server" Text='<%# Bind("Ingredient5") %>' />
                   </td>
               </tr>
                <tr>
                    <td>
                         Preparation:
                    </td>
                    <td>
                         <asp:TextBox ID="PreparationTextBox" runat="server" Text='<%# Bind("Preparation") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="Rfv_Prep" runat="server" ErrorMessage="Need to prep" ControlToValidate="PreparationTextBox"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Notes:
                    </td>
                    <td>
                         <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                    </td>
                    <td>

                    </td>
                </tr>
  
                <tr>

             <td>
                   
                  <asp:Button ID="btn_insert" runat="server" CausesValidation="true" CommandName="insert"  Text="Save" ></asp:Button>
              </td>
               </tr>
               
            </InsertItemTemplate>
            <ItemTemplate>
               
            </ItemTemplate>
        </asp:FormView>

    </table>
    </form>
</body>
</html>
