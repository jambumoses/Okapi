<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="restuarant.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <main>
      <!-- banners -->
      <section
        id="carouselExampleSlidesOnly"
        class="carousel slide banner"
        data-pause="false"
        data-interval="2000"
        data-ride="carousel"
      >
        <div class="carousel-inner banner-inner">
          <div class="carousel-item active banner-img-container">
            <div class="cap">
              <h1>sweet and delicious</h1>
              <p></p>
              <button class="btn">MAKE YOUR ORDER</button>
            </div>
            <img
              class="d-block w-100"
              src="assets/imgs/banners/banner7.jpg"
              alt=""
            />
          </div>
          <div class="carousel-item banner-img-container">
            <div class="cap">
              <h1></h1>
              <p></p>
              <button class="btn">MAKE YOUR ORDER</button>
            </div>
            <img
              class="d-block w-100"
              src="assets/imgs/banners/banner5.png"
              alt=""
            />
          </div>
          <div class="carousel-item banner-img-container">
            <div class="cap">
              <h1></h1>
              <p></p>
              <button class="btn">MAKE YOUR ORDER</button>
            </div>
            <img
              class="d-block w-100"
              src="assets/imgs/banners/banner-9.jpg"
              alt=""
            />
          </div>
          <div class="carousel-item banner-img-container">
            <div class="cap">
              <h1></h1>
              <p></p>
              <button class="btn">MAKE YOUR ORDER</button>
            </div>
            <img
              class="d-block w-100"
              src="assets/imgs/banners/banner12.jpg"
              alt=""
            />
          </div>
          <div class="carousel-item banner-img-container">
            <div class="cap">
              <h1></h1>
              <p></p>
              <button class="btn">MAKE YOUR ORDER</button>
            </div>
            <img
              class="d-block w-100"
              src="assets/imgs/banners/banner6.jpg"
              alt=""
            />
          </div>
          <div class="carousel-item banner-img-container">
            <div class="cap">
              <h1></h1>
              <p></p>
              <button class="btn">MAKE YOUR ORDER</button>
            </div>
            <img
              class="d-block w-100"
              src="assets/imgs/banners/banner8.jpg"
              alt=""
            />
          </div>
          <div class="carousel-item banner-img-container">
            <div class="cap">
              <h1></h1>
              <p></p>
              <button class="btn">MAKE YOUR ORDER</button>
            </div>
            <img
              class="d-block w-100"
              src="assets/imgs/banners/banner9.jpg"
              alt=""
            />
          </div>
          <div class="carousel-item banner-img-container">
            <div class="cap">
              <h1></h1>
              <p></p>
              <button class="btn">MAKE YOUR ORDER</button>
            </div>
            <img
              class="d-block w-100"
              src="assets/imgs/banners/banner8.jpg"
              alt=""
            />
          </div>
          <div class="carousel-item banner-img-container">
            <div class="cap">
              <h1></h1>
              <p></p>
              <button class="btn">MAKE YOUR ORDER</button>
            </div>
            <img
              class="d-block w-100"
              src="assets/imgs/banners/banner14.jpg"
              alt=""
            />
          </div>
        </div>
      </section>

      <!-- categories -->
      <section class="category-container" id="ourmenu">
        <h3>our menu</h3>

        <div class="carousel-container slick-container">
           <asp:Repeater runat="server" ID="categoriesRepeater">
            <ItemTemplate>
                <div class="slide slick-item">
                    <span class="slick-item-title"><%# Eval("title") %></span>
                    <img src="assets/imgs/categories/<%# Eval("img") %>" alt="" />
                </div>
            </ItemTemplate>
          </asp:Repeater>
        </div>
      </section>

      <!-- filter section -->
      <section class="filter-section">
        <div class="search-container">
          <form runat="server">
              <asp:TextBox runat="server" ID="searchInput" TextMode="Search" placeholder="Search For Product" ></asp:TextBox>
               <asp:Button  runat="server" Text="search" OnClick="searchButton"/>
          </form>
        </div>

        <div class="header-socials">
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-facebook"></i></a>
          <a href="#"><i class="fab fa-linkedin"></i></a>
        </div>
      </section>


        <!--shop--->
      <section class="shop-section">
          <asp:Repeater ID="homeshopRepeater" runat="server">
              <ItemTemplate>
        <a href="detail.aspx?id=<%# Eval("item_id") %>" style="text-decoration: none;" class="shop-item">
          <span class="shop-title">
            <small><%# Eval("title")%></small>
          </span>
          <span class="shop-description"
            ><%# Eval("description")%>
          </span>
          <span class="shop-price">
            <%# Eval("currency")%>.
            <br />
            <%# Eval("price")%>
          </span>
          <img src="assets/imgs/shop/<%# Eval("img")%>" alt="" />
        </a>
              </ItemTemplate>
          </asp:Repeater>
       
      </section>
    </main>
</asp:Content>
