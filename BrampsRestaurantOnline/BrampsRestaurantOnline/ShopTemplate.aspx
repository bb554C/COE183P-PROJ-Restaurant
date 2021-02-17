<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShopTemplate.aspx.cs" Inherits="BrampsRestaurantOnline.ShopeTemplate" EnableEventValidation="False" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <asp:Panel ID="BreakfastPanel" CssClass="justify-center padding-left" runat="server">
        <div class="row row-cols-4 margin-2 justify-center">
            <asp:Repeater ID="RepeaterBreakfast" runat="server">
                <ItemTemplate>
                    <div id="Item<%#:Eval("MenuItemID")%>" class="card col w-20">
                        <asp:HiddenField runat="server" ID="ItemName" Value='<%# Eval("MenuItemName") %>' />
                        <asp:HiddenField runat="server" ID="ItemID" Value='<%# Eval("MenuItemID") %>' />
                        <asp:HiddenField runat="server" ID="ItemPrice" Value='<%# Eval("MenuItemPrice") %>' />
                        <asp:HiddenField runat="server" ID="ItemQty" Value="0" ClientIDMode="Static" />
                        <img id="Image<%#:Eval("MenuItemID")%>" class="card-img-top justify-center" src='Image/<%#:Eval("MenuItemName")%>.png'/>
                        <h5 class="card-title"><%#:Eval("MenuItemName") %></h5>
                        <p class="card-text text-autosize">Price: <%#:Eval("MenuItemPrice") %></p>
                        <p class="card-text text-autosize"><%#:Eval("MenuItemDescription")%></p>
                        <asp:TextBox ID="TextBox" runat="server" CssClass="text-box-center justify-center" Text="0" />
                        <asp:Button ID="Button" runat="server" Text="Add to Cart" CssClass="btn btn-warning button-add-cart justify-center w-50" OnClick="Button_Click"/>
                    </div>
                </ItemTemplate>
        </asp:Repeater>
        </div>
    </asp:Panel>
</asp:Content>

