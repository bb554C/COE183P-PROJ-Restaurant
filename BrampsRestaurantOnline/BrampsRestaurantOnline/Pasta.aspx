<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Pasta.aspx.cs" Inherits="BrampsRestaurantOnline.FoodDescription" %>
<asp:Content ID="FoodDescription" ContentPlaceHolderID="MainBody" runat="server">
     <div class ="justify-center padding-left">
        <div class="row row-cols-4" id="itemTables">
            <asp:Panel ID="Panel1" runat="server" CssClass="card col w-20">
              <asp:Image ID="Image1" runat="server" CssClass="card-img-top" ImageUrl="Image/no-image.png" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="BakedMacaroniTitle" runat="server" Text="Baked Macaroni"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="BakedMacaroniPrice" runat="server" Text="Price: 120.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="BakedMacaroniDesc" runat="server" Text="a pasta dish made with elbow macaroni that's tossed in meaty, tomato-based sauce and topped with creamy, cheesy white sauce."></asp:Label></p>
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
                        <asp:Button ID="BakedMacaroniCart" class="btn btn-warning button-add-cart" runat="server" Text="Add to Cart" />
                    </div>
              </div>
          </asp:Panel>           
            <asp:Panel ID="Panel2" runat="server" CssClass="card col w-20">
              <asp:Image ID="Image2" runat="server" CssClass="card-img-top" ImageUrl="Image/no-image.png" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="LabelItemFoodTitle2" runat="server" Text="ItemFoodTitle"></asp:Label></h5>
                  <p class="card-text text-autosize"><asp:Label ID="LabelPrice2" runat="server" Text="Price: 0.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="LabelItemFoodDesc2" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
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
                        <button type="button" class="btn btn-warning button-add-cart">Add to Cart</button>
                    </div>
              </div>
          </asp:Panel>
            <asp:Panel ID="Panel3" runat="server" CssClass="card col w-20">
              <asp:Image ID="Image3" runat="server" CssClass="card-img-top" ImageUrl="Image/no-image.png" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="LabelItemFoodTitle3" runat="server" Text="ItemFoodTitle"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="LabelPrice3" runat="server" Text="Price: 0.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="LabelItemFoodDesc3" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
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
                        <button type="button" class="btn btn-warning button-add-cart">Add to Cart</button>
                    </div>
              </div>
          </asp:Panel>
            <asp:Panel ID="Panel4" runat="server" CssClass="card col w-20">
              <asp:Image ID="Image4" runat="server" CssClass="card-img-top" ImageUrl="Image/no-image.png" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="LabelItemFoodTitle4" runat="server" Text="ItemFoodTitle"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="LabelPrice4" runat="server" Text="Price: 0.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="LabelItemFoodDesc4" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
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
                        <button type="button" class="btn btn-warning button-add-cart">Add to Cart</button>
                    </div>
              </div>
          </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" CssClass="card col w-20">
              <asp:Image ID="Image5" runat="server" CssClass="card-img-top" ImageUrl="Image/no-image.png" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="LabelItemFoodTitle5" runat="server" Text="ItemFoodTitle"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="LabelPrice5" runat="server" Text="Price: 0.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="LabelItemFoodDesc5" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
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
                        <button type="button" class="btn btn-warning button-add-cart">Add to Cart</button>
                    </div>
              </div>
          </asp:Panel>
            <asp:Panel ID="Panel6" runat="server" CssClass="card col w-20">
              <asp:Image ID="Image6" runat="server" CssClass="card-img-top" ImageUrl="Image/no-image.png" />
              <div class="card-body">
                    <h5 class="card-title" ><asp:Label ID="LabelItemFoodTitle6" runat="server" Text="ItemFoodTitle"></asp:Label></h5>
                    <p class="card-text text-autosize"><asp:Label ID="LabelPrice6" runat="server" Text="Price: 0.00"/></p>
                    <p class="card-text text-autosize"><asp:Label ID="LabelItemFoodDesc6" runat="server" Text="This is a Sample Description. Please Disregard any information written in here."></asp:Label></p>
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
                        <button type="button" class="btn btn-warning button-add-cart">Add to Cart</button>
                    </div>
              </div>
          </asp:Panel>
        </div>
    </div>
</asp:Content>
