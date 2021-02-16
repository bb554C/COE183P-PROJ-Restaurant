<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Beverages.aspx.cs" Inherits="BrampsRestaurantOnline.Beverages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    <asp:Panel ID="BeveragesPanel" CssClass="justify-center padding-left" runat="server">
        <div class="row row-cols-4 margin-2 justify-center">
            <asp:Repeater ID="RepeaterBeverages" runat="server">
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