<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="New_Site.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <form id="form1">
        <div class="container">
            <h1 class="text-dark">Your Shopping Cart</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered" class="card" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <div class="text-center">
                                <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("ImageURL") %>' class="img-fluid" style="height:150px"/>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                    <asp:BoundField DataField="Category" HeaderText="Category" />
                    <asp:BoundField DataField="Size" HeaderText="Size" />
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="Price" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>  
                            <div class="text-center">
                                <asp:Button ID="btnRemove" runat="server" Text="Remove" class="btn btn-outline-danger btn-sm" CommandName="Remove" CommandArgument='<%# Eval("ProductName") %>' />
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>          
            </asp:GridView>
            <div class="d-flex justify-content-between align-items-center">
                <asp:Label ID="TotalPrice" runat="server" Text=""></asp:Label>
                <a href="Home.aspx" class="text-info fw-bold ms-auto">Continue Shopping</a>
            </div>
            <div>
                <asp:Button class="btn btn-success" Text="Checkout" runat="server"/>
            </div>

        </div>
    </form>
  </div> 
</asp:Content>
