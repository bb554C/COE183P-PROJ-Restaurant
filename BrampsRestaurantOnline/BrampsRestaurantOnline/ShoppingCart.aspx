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
        Quantity
    </div>
    <div class="col-sm">
      Price
    </div>
  </div>
    <asp:Repeater ID="RepeaterOrder" runat="server">
        <ItemTemplate>
                <asp:HiddenField ID="RowId" runat="server" Value='<%#:Eval("Item ID") %>' />
              <div id="Item<%#:Eval("Item ID") %>" class="card col w-20">
                   <div class="row">
                <div class="col-sm">
                 <h6 class="card-title"><%#:Eval("Item Name") %></h6>
                </div>
                <div class="col-sm">
                 <p class="card-text text-autosize">Price: <%#:Eval("Item Quantity") %></p>
                </div>
                <div class="col-sm">
                   <p class="card-text text-autosize"><%#:Eval("Item Price")%></p>
                </div>
                       <div class="col-sm">
                      <asp:Button ID="ButtonX" runat="server" Text="X" CssClass="btn btn-danger x-mark" />
                  </div>
              </div>
                  
                  </div>
        </ItemTemplate>
        </asp:Repeater>
        <div class="mb-3">
          
  <label for="Contact number" class="form-label">Phone number</label>
  <input type="tel" class="form-control" id="formControl1" placeholder="09203331111" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required>
        </div>
     <div class="mb-3">
  <label for="Name" class="form-label">Last Name, First Name</label>
  <input type="text" class="form-control" id="formControl2" placeholder="Dela Cruz, Juan" required>
    </div>
                <div class="mb-3">
  <label for="Address" class="form-label">Full Address</label>
  <input type="text" class="form-control" id="formControl3" placeholder="Unit number, house number, building, street name, barangay" required>
    </div>
       
</div>      
      <div class ="justify-right w-25">
            <button type="button" class="btn btn-success" id="btnCheckout">Checkout</button>
        </div>
     
          

     </asp:Panel>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
