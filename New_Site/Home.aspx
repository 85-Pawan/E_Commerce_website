<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="New_Site.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
       .carousel-item img {
        width: 100%;
        height: 510px;
    }
    </style>
    <div>
        
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="Images/banner_ASICS.jpg" class="d-block w-100" alt="ascis">
    </div>
    <div class="carousel-item">
      <img src="Images/adidas_banner.jpg" class="d-block w-100" alt="adidas">
    </div>
    <div class="carousel-item">
      <img src="Images/RBK_HB.jpg" class="d-block w-100" alt="rbk">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
        
   <div class="container mt-5">
    <h2 class="text-center" id="Mens">Mens</h2>
    <div class="row justify-content-between">

        <div class="col-md-3">
            <div class="card">
        <img src="Images/adidas_superstar.jpg" class="card-img-top" alt="Adidas" style="height:300px"/>
        <div class="card-body">
            <h5 class="card-title">Adidas Superstar</h5>
            <p class="card-text">₹ 8,999.00</p>
            <p class="card-text">Size <asp:DropDownList ID="DropDownList2" class="btn btn-outline-dark btn-sm" runat="server">
                    <asp:ListItem Text="7"></asp:ListItem>
                    <asp:ListItem Text="8"></asp:ListItem>
                    <asp:ListItem Text="9"></asp:ListItem>
                    <asp:ListItem Text="10"></asp:ListItem>
                    <asp:ListItem Text="11"></asp:ListItem>
                    <asp:ListItem Text="12"></asp:ListItem>
                </asp:DropDownList></p> 
                <asp:Button ID="Button1" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button1_Click" />   
        </div>
        </div>
        </div>

         <div class="col-md-3">
            <div class="card">
                <img src="Images/nike_sb.jpg" class="card-img-top" alt="nike" style="height:300px">
                <div class="card-body">
                    <h5 class="card-title">Nike SB Force</h5>
                    <p class="card-text">₹ 6,999.00</p>
                    <p class="card-text">Size <asp:DropDownList ID="DropDownList1" class="btn btn-outline-dark btn-sm" runat="server">
                        <asp:ListItem Text="7"></asp:ListItem>
                        <asp:ListItem Text="8"></asp:ListItem>
                        <asp:ListItem Text="9"></asp:ListItem>
                        <asp:ListItem Text="10"></asp:ListItem>
                        <asp:ListItem Text="11"></asp:ListItem>
                        <asp:ListItem Text="12"></asp:ListItem>
                    </asp:DropDownList></p> 
                    <asp:Button ID="Button2" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button2_Click" />
                </div>
            </div>
        </div>

             <div class="col-md-3">
            <div class="card">
            <img src="Images/rbk_classic.jpg" class="card-img-top" alt="rbk" style="height:300px">
            <div class="card-body">
                <h5 class="card-title">Reebok Classic</h5>
                <p class="card-text">₹ 7,999.00</p>
                <p class="card-text">Size <asp:DropDownList ID="DropDownList3" class="btn btn-outline-dark btn-sm" runat="server">
                        <asp:ListItem Text="7"></asp:ListItem>
                        <asp:ListItem Text="8"></asp:ListItem>
                        <asp:ListItem Text="9"></asp:ListItem>
                        <asp:ListItem Text="10"></asp:ListItem>
                        <asp:ListItem Text="11"></asp:ListItem>
                        <asp:ListItem Text="12"></asp:ListItem>
                    </asp:DropDownList></p> 
                    <asp:Button ID="Button3" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button3_Click" />
                    </div>
                </div>
            </div>

                 <div class="col-md-3">
        <div class="card">
        <img src="Images/puma_white.jpg" class="card-img-top" alt="puma" style="height:300px">
        <div class="card-body">
            <h5 class="card-title">Puma Cell Rapid</h5>
            <p class="card-text">₹ 5,599.00</p>
            <p class="card-text">Size <asp:DropDownList ID="DropDownList4" class="btn btn-outline-dark btn-sm" runat="server">
                        <asp:ListItem Text="7"></asp:ListItem>
                        <asp:ListItem Text="8"></asp:ListItem>
                        <asp:ListItem Text="9"></asp:ListItem>
                        <asp:ListItem Text="10"></asp:ListItem>
                        <asp:ListItem Text="11"></asp:ListItem>
                        <asp:ListItem Text="12"></asp:ListItem>
                    </asp:DropDownList></p> 
                    <asp:Button ID="Button4" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button4_Click"/>
                </div>
            </div>
        </div>
        </div>

            <div class="container mt-5">
        <h2 class="text-center" id="Womens">Womens</h2>
        <div class="row justify-content-between">

           <div class="col-md-3">
            <div class="card">
                <img src="Images/nike_airmax_w.jpg" class="card-img-top" alt="nike_w" style="height:300px">
                <div class="card-body">
                    <h5 class="card-title">Nike AIRMAX</h5>
                    <p class="card-text">₹ 15,999.00</p>
                    <p class="card-text">Size <asp:DropDownList ID="DropDownList5" class="btn btn-outline-dark btn-sm" runat="server">
                        <asp:ListItem Text="7"></asp:ListItem>
                        <asp:ListItem Text="8"></asp:ListItem>
                        <asp:ListItem Text="9"></asp:ListItem>
                        <asp:ListItem Text="10"></asp:ListItem>
                        <asp:ListItem Text="11"></asp:ListItem>
                        <asp:ListItem Text="12"></asp:ListItem>
                    </asp:DropDownList></p> 
                    <asp:Button ID="Button5" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button5_Click"/>
                </div>
            </div>
            </div>

            <div class="col-md-3">
            <div class="card">
                <img src="Images/gel_kayano_w.jpg" class="card-img-top" alt="ascis_w" style="height:300px">
                <div class="card-body">
                    <h5 class="card-title">Ascis Gel-Kayano</h5>
                    <p class="card-text">₹ 12,999.00</p>
                    <p class="card-text">Size <asp:DropDownList ID="DropDownList6" class="btn btn-outline-dark btn-sm" runat="server">
                        <asp:ListItem Text="7"></asp:ListItem>
                        <asp:ListItem Text="8"></asp:ListItem>
                        <asp:ListItem Text="9"></asp:ListItem>
                        <asp:ListItem Text="10"></asp:ListItem>
                        <asp:ListItem Text="11"></asp:ListItem>
                        <asp:ListItem Text="12"></asp:ListItem>
                    </asp:DropDownList></p> 
                    <asp:Button ID="Button6" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button6_Click"/>
                </div>
            </div>
        </div>

         <div class="col-md-3">
            <div class="card">
                <img src="Images/puma_cruise_w.jpg" class="card-img-top" alt="puma_w" style="height:300px">
                <div class="card-body">
                    <h5 class="card-title">Puma Cruise Rider</h5>
                    <p class="card-text">₹ 4,999.00</p>
                    <p class="card-text">Size <asp:DropDownList ID="DropDownList7" class="btn btn-outline-dark btn-sm" runat="server">
                        <asp:ListItem Text="7"></asp:ListItem>
                        <asp:ListItem Text="8"></asp:ListItem>
                        <asp:ListItem Text="9"></asp:ListItem>
                        <asp:ListItem Text="10"></asp:ListItem>
                        <asp:ListItem Text="11"></asp:ListItem>
                        <asp:ListItem Text="12"></asp:ListItem>
                    </asp:DropDownList></p> 
                    <asp:Button ID="Button7" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button7_Click"/>
            </div>
        </div>
        </div>

               <div class="col-md-3">
                <div class="card">
                <img src="Images/adidas_ultra_w.jpg" class="card-img-top" alt="adidas_w" style="height:300px">
                <div class="card-body">
                    <h5 class="card-title">Adidas UltraBounce</h5>
                    <p class="card-text">₹ 10,999.00</p>
                    <p class="card-text">Size <asp:DropDownList ID="DropDownList8" class="btn btn-outline-dark btn-sm" runat="server">
                        <asp:ListItem Text="7"></asp:ListItem>
                        <asp:ListItem Text="8"></asp:ListItem>
                        <asp:ListItem Text="9"></asp:ListItem>
                        <asp:ListItem Text="10"></asp:ListItem>
                        <asp:ListItem Text="11"></asp:ListItem>
                        <asp:ListItem Text="12"></asp:ListItem>
                    </asp:DropDownList></p> 
                    <asp:Button ID="Button8" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button8_Click"/>
                </div>
            </div>
        </div>
       </div>

                    <div class="container mt-5">
        <h2 class="text-center" id="Kids">Kids</h2>
        <div class="row justify-content-between">

           <div class="col-md-3">
            <div class="card">
                <img src="Images/puma_future_k.jpg" class="card-img-top" alt="puma_k" style="height:300px">
                <div class="card-body">
                    <h5 class="card-title">Puma Future Rider</h5>
                    <p class="card-text">₹ 3,499.00</p>
                    <p class="card-text">Size <asp:DropDownList ID="DropDownList9" class="btn btn-outline-dark btn-sm" runat="server">
                        <asp:ListItem Text="3"></asp:ListItem>
                        <asp:ListItem Text="4"></asp:ListItem>
                        <asp:ListItem Text="5"></asp:ListItem>
                        <asp:ListItem Text="6"></asp:ListItem>
                        </asp:DropDownList></p> 
                        <asp:Button ID="Button9" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button9_Click"/>
                </div>
            </div>
            </div>

            <div class="col-md-3">
            <div class="card">
                <img src="Images/adidas_tensaur_kjpg.jpg" class="card-img-top" alt="adidas_k" style="height:300px">
                <div class="card-body">
                    <h5 class="card-title">Adidas Tesaur</h5>
                    <p class="card-text">₹ 5,999.00</p>
                    <p class="card-text">Size <asp:DropDownList ID="DropDownList10" class="btn btn-outline-dark btn-sm" runat="server">
                        <asp:ListItem Text="3"></asp:ListItem>
                        <asp:ListItem Text="4"></asp:ListItem>
                        <asp:ListItem Text="5"></asp:ListItem>
                        <asp:ListItem Text="6"></asp:ListItem>
                        </asp:DropDownList></p> 
                        <asp:Button ID="Button10" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button10_Click"/>
                </div>
            </div>
        </div>

         <div class="col-md-3">
            <div class="card">
                <img src="Images/nike_slip_k.jpg" class="card-img-top" alt="nike_k" style="height:300px">
                <div class="card-body">
                    <h5 class="card-title">Nike Slip-On</h5>
                    <p class="card-text">₹ 6,999.00</p>
                    <p class="card-text">Size <asp:DropDownList ID="DropDownList11" class="btn btn-outline-dark btn-sm" runat="server">
                        <asp:ListItem Text="3"></asp:ListItem>
                        <asp:ListItem Text="4"></asp:ListItem>
                        <asp:ListItem Text="5"></asp:ListItem>
                        <asp:ListItem Text="6"></asp:ListItem>
                        </asp:DropDownList></p> 
                        <asp:Button ID="Button11" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button11_Click"/>
                </div>
            </div>
        </div>

               <div class="col-md-3">
                <div class="card">
                <img src="Images/rbk_club_k.jpg" class="card-img-top" alt="rbk_k" style="height:300px">
                <div class="card-body">
                    <h5 class="card-title">Reebok Club</h5>
                    <p class="card-text">₹ 8,999.00</p>
                    <p class="card-text">Size <asp:DropDownList ID="DropDownList12" class="btn btn-outline-dark btn-sm" runat="server">
                        <asp:ListItem Text="3"></asp:ListItem>
                        <asp:ListItem Text="4"></asp:ListItem>
                        <asp:ListItem Text="5"></asp:ListItem>
                        <asp:ListItem Text="6"></asp:ListItem>
                        </asp:DropDownList></p> 
                        <asp:Button ID="Button12" class="btn btn-outline-info w-100" runat="server" Text="Add to Cart" OnClick="Button12_Click"/>
                </div>
            </div>
        </div>
       </div>

  </div>
   </div>     
  </div>
</div>
</asp:Content>
