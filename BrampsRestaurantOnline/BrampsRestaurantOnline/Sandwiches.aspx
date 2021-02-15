<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Sandwiches.aspx.cs" Inherits="BrampsRestaurantOnline.FoodDescription" %>
<asp:Content ID="Sandwiches" ContentPlaceHolderID="MainBody" runat="server">
     <div class ="justify-center padding-left">
        <div class="row row-cols-6" id="itemTables">
            <asp:Panel ID="BurgerNoCheese" runat="server" CssClass="card col w-20">
              <asp:Image ID="BurgerNoCheeseImage" runat="server" CssClass="card-img-top" ImageUrl="Image/BurgerNoCheese.png" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="BurgerNoCheeseTitle" runat="server" Text="Burger w/o Cheese"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="BurgerNoCheesePrice" runat="server" Text="Price: 40.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="BurgerNoCheeseDesc" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
                    <div  class="justify-center w-75">
                        <div class="btn-group btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseDown('textBoxID1');">
                                <img class="button-arrow" src="Image/downArrow.png"/>
                            </button>
                            <input type="text" id="textBoxID1" class="text-box-center" value="0" />
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseUp('textBoxID1');">
                                <img class="button-arrow" src="Image/upArrow.png"/>
                            </button>
                        </div>
                    </div>
                    <div  class="justify-center w-75">
                        <asp:Button ID="BurgerNoCheeseAddCart" class="btn btn-warning button-add-cart" runat="server" Text="Add to Cart" />
                    </div>
              </div>
          </asp:Panel>           
            <asp:Panel ID="BurgerCheese" runat="server" CssClass="card col w-20">
              <asp:Image ID="BurgerCheeseImage" runat="server" CssClass="card-img-top" ImageUrl="Image/BurgerCheese.jpg" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="BurgerCheeseTitle" runat="server" Text="Burger w/ Cheese"></asp:Label></h5>
                  <p class="card-text text-autosize"><asp:Label ID="BurgerCheesePrice" runat="server" Text="Price: 60.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="BurgerCheeseDesc" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
                    <div  class="justify-center w-75">
                        <div class="btn-group btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseDown('textBoxID2');">
                                <img class="button-arrow" src="Image/downArrow.png"/>
                            </button>
                            <input type="text" id="textBoxID2" class="text-box-center" value="0" />
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseUp('textBoxID2');">
                                <img class="button-arrow" src="Image/upArrow.png"/>
                            </button>
                        </div>
                    </div>
                    <div  class="justify-center w-75">
                        <asp:Button ID="BurgerCheeseAddCart" class="btn btn-warning button-add-cart" runat="server" Text="Add to Cart" />
                    </div>
              </div>
          </asp:Panel>
            <asp:Panel ID="ClubHouse" runat="server" CssClass="card col w-20">
              <asp:Image ID="ClubHouseImage" runat="server" CssClass="card-img-top" ImageUrl="Image/ClubHouse.jpg" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="ClubHouseTitle" runat="server" Text="Club House"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="ClubHousePrice" runat="server" Text="Price: 120.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="ClubHouseDesc" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
                    <div  class="justify-center w-75">
                        <div class="btn-group btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseDown('textBoxID3');">
                                <img class="button-arrow" src="Image/downArrow.png"/>
                            </button>
                            <input type="text" id="textBoxID3" class="text-box-center" value="0" />
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseUp('textBoxID3');">
                                <img class="button-arrow" src="Image/upArrow.png"/>
                            </button>
                        </div>
                    </div>
                    <div  class="justify-center w-75">
                        <asp:Button ID="ClubHouseAddCart" class="btn btn-warning button-add-cart" runat="server" Text="Add to Cart" />
                    </div>
              </div>
          </asp:Panel>
            <asp:Panel ID="Ham" runat="server" CssClass="card col w-20">
              <asp:Image ID="HamImage" runat="server" CssClass="card-img-top" ImageUrl="Image/Ham.jpg" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="HamTitle" runat="server" Text="Ham"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="HamPrice" runat="server" Text="Price: 40.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="HamDesc" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
                    <div  class="justify-center w-75">
                        <div class="btn-group btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseDown('textBoxID4');">
                                <img class="button-arrow" src="Image/downArrow.png"/>
                            </button>
                            <input type="text" id="textBoxID4" class="text-box-center" value="0" />
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseUp('textBoxID4');">
                                <img class="button-arrow" src="Image/upArrow.png"/>
                            </button>
                        </div>
                    </div>
                    <div  class="justify-center w-75">
                        <asp:Button ID="HamAddCart" class="btn btn-warning button-add-cart" runat="server" Text="Add to Cart" />
                    </div>
              </div>
          </asp:Panel>
            <asp:Panel ID="HamCheese" runat="server" CssClass="card col w-20">
              <asp:Image ID="HamCheeseImage" runat="server" CssClass="card-img-top" ImageUrl="Image/HamCheese.jpg" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="HamCheeseTitle" runat="server" Text="Ham & Cheese"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="HamCheesePrice" runat="server" Text="Price: 50.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="HamCheeseDesc" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
                    <div  class="justify-center w-75">
                        <div class="btn-group btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseDown('textBoxID5');">
                                <img class="button-arrow" src="Image/downArrow.png"/>
                            </button>
                            <input type="text" id="textBoxID5" class="text-box-center" value="0" />
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseUp('textBoxID5');">
                                <img class="button-arrow" src="Image/upArrow.png"/>
                            </button>
                        </div>
                    </div>
                    <div  class="justify-center w-75">
                        <asp:Button ID="HamCheeseAddCart" class="btn btn-warning button-add-cart" runat="server" Text="Add to Cart" />
                    </div>
              </div>
          </asp:Panel>
            <asp:Panel ID="Hotdog" runat="server" CssClass="card col w-20">
              <asp:Image ID="HotdogImage" runat="server" CssClass="card-img-top" ImageUrl="Image/Hotdog.jpg" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="HotdogTitle" runat="server" Text="Hotdog"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="HotdogPrice" runat="server" Text="Price: 40.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="HotdogDesc" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
                    <div  class="justify-center w-75">
                        <div class="btn-group btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseDown('textBoxID6');">
                                <img class="button-arrow" src="Image/downArrow.png"/>
                            </button>
                            <input type="text" id="textBoxID6" class="text-box-center" value="0" />
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseUp('textBoxID6');">
                                <img class="button-arrow" src="Image/upArrow.png"/>
                            </button>
                        </div>
                    </div>
                    <div  class="justify-center w-75">
                        <asp:Button ID="HotdogAddCart" class="btn btn-warning button-add-cart" runat="server" Text="Add to Cart" />
                    </div>
              </div>
          </asp:Panel>
            <asp:Panel ID="Tuna" runat="server" CssClass="card col w-20">
              <asp:Image ID="TunaImage" runat="server" CssClass="card-img-top" ImageUrl="Image/Tuna.jpg" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="TunaTitle" runat="server" Text="Tuna"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="TunaPrice" runat="server" Text="Price: 40.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="TunaDesc" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
                    <div  class="justify-center w-75">
                        <div class="btn-group btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseDown('textBoxID6');">
                                <img class="button-arrow" src="Image/downArrow.png"/>
                            </button>
                            <input type="text" id="textBoxID7" class="text-box-center" value="0" />
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseUp('textBoxID6');">
                                <img class="button-arrow" src="Image/upArrow.png"/>
                            </button>
                        </div>
                    </div>
                    <div  class="justify-center w-75">
                        <asp:Button ID="TunaAddCart" class="btn btn-warning button-add-cart" runat="server" Text="Add to Cart" />
                    </div>
              </div>
          </asp:Panel>
            <asp:Panel ID="TunaCheese" runat="server" CssClass="card col w-20">
              <asp:Image ID="TunaCheeseImage" runat="server" CssClass="card-img-top" ImageUrl="Image/TunaCheese.jpg" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="TunaCheeseTitle" runat="server" Text="Tuna & Cheese"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="TunaCheesePrice" runat="server" Text="Price: 50.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="TunaCheeseDesc" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
                    <div  class="justify-center w-75">
                        <div class="btn-group btn-group" role="group" aria-label="Basic example">
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseDown('textBoxID6');">
                                <img class="button-arrow" src="Image/downArrow.png"/>
                            </button>
                            <input type="text" id="textBoxID8" class="text-box-center" value="0" />
                            <button type="button" class="btn btn-dark no-padding" onclick="intAmountMouseUp('textBoxID6');">
                                <img class="button-arrow" src="Image/upArrow.png"/>
                            </button>
                        </div>
                    </div>
                    <div  class="justify-center w-75">
                        <asp:Button ID="TunaCheeseAddCart" class="btn btn-warning button-add-cart" runat="server" Text="Add to Cart" />
                    </div>
              </div>
          </asp:Panel>
        </div>
    </div>
</asp:Content>
