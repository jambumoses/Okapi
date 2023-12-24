<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="categories.aspx.cs" Inherits="restuarant.categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
      <!-- filter section -->
      <section class="filter-section">
        <div class="search-container">
          <form runat="server">
              <asp:TextBox runat="server" ID="searchInput" TextMode="Search" placeholder="Search For Product" ></asp:TextBox>
               <asp:Button  runat="server" Text="search" OnClick="searchButton"/>
          </form>
        </div>

        <div class="header-socials">
          <a href=""><i class="fab fa-twitter"></i></a>
          <a href=""><i class="fab fa-instagram"></i></a>
          <a href=""><i class="fab fa-facebook"></i></a>
          <a href=""><i class="fab fa-linkedin"></i></a>
        </div>
      </section>

        <!--shop section--->
        <!--shop--->
      <section class="shop-section">
          <asp:Repeater ID="categoriesRepeater" runat="server">
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
