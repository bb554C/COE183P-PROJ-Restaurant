<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Sizzling.aspx.cs" Inherits="BrampsRestaurantOnline.Sizzling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <asp:Panel ID="SizzlingPanel" CssClass="justify-center padding-left" runat="server">
        <div class="row row-cols-4 margin-2 justify-center">
            <asp:Repeater ID="RepeaterSizzling" runat="server">
                <ItemTemplate>
                    <div id="Item<%#:Eval("MenuItemID")%>" class="card col w-20">
                        <img id="Image<%#:Eval("MenuItemID")%>" class="card-img-top justify-center" src='Image/<%#:Eval("MenuItemName")%>.png'/>
                        <h5 class="card-title"><%#:Eval("MenuItemName") %></h5>
                        <p class="card-text text-autosize">Price: <%#:Eval("MenuItemPrice") %></p>
                        <p class="card-text text-autosize"><%#:Eval("MenuItemDescription")%></p>
                        <div class="justify-center w-75">
                            <div class="btn-group btn-group" role="group" aria-label="Basic example">
                                <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseDown('textBox<%#:Eval("MenuItemID")%>');">
                                    <img class="button-arrow" src="Image/downArrow.png"/>
                                </button>
                                <input type="text" id="textBox<%#:Eval("MenuItemID")%>" class="text-box-center" value="0" />
                                <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseUp('textBox<%#:Eval("MenuItemID")%>');">
                                    <img class="button-arrow" src="Image/upArrow.png"/>
                                </button>
                            </div>
                        </div>
                        <div  class="justify-center w-75">
                            <button type="button" class="btn btn-warning button-add-cart" onclick="createRowFunction()">Add to Cart</button>
                        </div>
                    </div>
                </ItemTemplate>
        </asp:Repeater>
        </div>
    </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <div class="nav justify-center">
        <div class="container overflow-hidden">
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
    </div>
</asp:Content>