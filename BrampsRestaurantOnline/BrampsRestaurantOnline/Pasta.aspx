<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Pasta.aspx.cs" Inherits="BrampsRestaurantOnline.Pasta" EnableEventValidation="False" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <asp:Panel ID="PastaPanel" CssClass="justify-center padding-left" runat="server">
        <div class="row row-cols-4 margin-2 justify-center">
            <asp:Repeater ID="RepeaterPasta" runat="server">
                <ItemTemplate>
                    <div id="Item<%#:Eval("MenuItemID")%>" class="card col w-20">
                        <asp:HiddenField runat="server" ID="ItemName" Value='<%# Eval("MenuItemName") %>' />
                        <asp:HiddenField runat="server" ID="ItemID" Value='<%# Eval("MenuItemID") %>' />
                        <asp:HiddenField runat="server" ID="ItemPrice" Value='<%# Eval("MenuItemPrice") %>' />
                        <asp:HiddenField runat="server" ID="ItemQty" Value="0" ClientIDMode="Static" />
                        <img id="Image<%#:Eval("MenuItemID")%>" class="card-img-top justify-center" height="400" src='Image/<%#:Eval("MenuItemName")%>.png'/>
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
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <div class="row justify-content-center">
        <div class="col-4">
        </div>
        <div class="col-5">
                    <div class="container" role="group" aria-label="Second group">
                        <a class="btn btn-dark" href="Favorites.aspx" role="button">1</a>
                        <a class="btn btn-dark" href="Appetizers.aspx" role="button">2</a>
                        <a class="btn btn-dark" href="Beverages.aspx" role="button">3</a>
                        <a class="btn btn-dark" href="Breakfast.aspx" role="button">4</a>
                        <a class="btn btn-dark" href="Congee.aspx" role="button">5</a>
                        <a class="btn btn-dark" href="Dessert.aspx" role="button">6</a>
                        <a class="btn btn-dark" href="Grilled.aspx" role="button">7</a>
                        <a class="btn btn-dark" href="PansitNoodles.aspx" role="button">8</a>
                        <a class="btn btn-dark" href="Pasta.aspx" role="button">9</a>
                        <a class="btn btn-dark" href="Rice.aspx" role="button">10</a>
                        <a class="btn btn-dark" href="RiceMeal.aspx" role="button">11</a>
                        <a class="btn btn-dark" href="Sandwiches.aspx" role="button">12</a>
                        <a class="btn btn-dark" href="Sizzling.aspx" role="button">13</a>
                        <a class="btn btn-dark" href="Teriyaki.aspx" role="button">14</a>
                        <a class="btn btn-dark" href="Veggies.aspx" role="button">15</a>
                    </div>
        </div>
        <div class="col-3">
        </div>
  </div>
</asp:Content>