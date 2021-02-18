<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="BrampsRestaurantOnline.WebForm1" EnableEventValidation="False" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
    
 <asp:Panel ID="ShoppingCartPanel" CssClass="w-75 justify-center" runat="server">
     <br />
           <div class="container border border-dark" >
          <div class="fs-1">Order Summary</div>    
  <div class="row fw-bold">
    <div class="card col w-15">
      Item Name
    </div>
    <div class="card col w-15">
        Quantity
    </div>
    <div class="card col w-15">
      Price
    </div>
        <div class="card col w-15">
      Remove
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
                 <p class="card-text text-autosize"> <%#:Eval("Item Quantity") %></p>
                </div>
                <div class="col-sm">
                   <p class="card-text text-autosize">₱ <%#:Eval("Item Price")%></p>
                </div>
                       <div class="col-sm">
                      <asp:Button ID="ButtonX" runat="server" Text="X" CssClass="btn btn-danger x-mark " onclick="ButtonX_Click"/>
                  </div>
              </div>
          
                  </div>
        </ItemTemplate>
        </asp:Repeater>
    <div class="justify-right w-50 card">
        <asp:Label ID="LabelTotal" runat="server" Text="Grand Total:" CssClass="fs-5"></asp:Label>
    </div>
</div>
     
     </asp:Panel>
    <asp:Panel ID="CustomerDetails" CssClass="w-50 justify-center" runat="server">  
        <br />
        <br />
       
        <p class="fs-1 ">Customer Details</p>
          
    <div class="mb-3" >
         
  <label for="Contact number" class="form-label">Phone number</label>
        <asp:TextBox ID="TextBoxNumber" runat="server" CssClass="form-control" placeholder="09XX XXX XXXX"></asp:TextBox>
        </div>
     <div class="mb-3">
  <label for="Name" class="form-label">Last Name, First Name</label>
         <asp:TextBox ID="TextBoxName" runat="server" placeholder="Dela Cruz, Juan" CssClass="form-control"></asp:TextBox>
    </div>
                <div class="mb-3">
  <label for="Address" class="form-label">Full Address</label>
                    <asp:TextBox ID="TextBoxAddress" runat="server" placeholder='Unit number, house number, building, street name, barangay' CssClass="form-control"></asp:TextBox>
    </div>
      <div class =" d-grid gap-2 col-6 mx-auto">
          <asp:Button ID="ButtonCheckout" runat="server" Text="Confirm Checkout" CssClass="btn btn-success btn-lg" OnClick="ButtonCheckout_Click1" />
        </div>  
    </asp:Panel> 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
