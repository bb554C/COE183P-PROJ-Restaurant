<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="BrampsRestaurantOnline.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">

 <asp:Panel ID="ShoppingCartPanel" CssClass="w-75 justify-center" runat="server">
           <div class="container">
  <div class="row">
    <div class="col-sm">
      Item Name
    </div>
    <div class="col-sm">
      Price
    </div>
    <div class="col-sm">
      Item Description
    </div>
  </div>
    <asp:Repeater ID="RepeaterOrder" runat="server">
        <ItemTemplate>
              <div id="Item<%#:Eval("OrderID")%>" class="card col w-20">
                  <p>aaaa</p>
                  </div>
        </ItemTemplate>
        </asp:Repeater>
</div>      

     <input class="form-control" type="text" placeholder="Readonly input here..." aria-label="readonly input example" readonly>
          

     </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
