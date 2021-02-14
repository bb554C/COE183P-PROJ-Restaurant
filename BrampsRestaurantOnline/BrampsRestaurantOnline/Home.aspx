<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BrampsRestaurantOnline.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainBody" runat="server">
        <div id="carouselExampleIndicators" class="carousel slide justify-center w-50" data-bs-ride="carousel">
  <div class="carousel-indicators>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner limit w-100">
    <div class="carousel-item active" data-bs-interval="5000">
      <img src="Image/ParkingLot.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="Image/FrontStore.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item" data-bs-interval="5000">
      <img src="Image/InsideStore.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"  data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"  data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>    
</asp:Content>
