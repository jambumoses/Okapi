<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="detail.aspx.cs" Inherits="restuarant.detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main class="detail-section">
        <span class="detail-path">menu > foods > fish</span>

            <asp:Repeater runat="server" ID="Shopdetail">
                <ItemTemplate>
        <section class="details-banner">
            <!-- image section -->
            <div class="details-img-container"><img src="assets/imgs/shop/<%# Eval("img") %>" alt=""/></div>

            <!-- details section -->
            <div class="details-information">
                <h2><%# Eval("title") %></h2>
                <p>
                    <%# Eval("description") %>
                </p>
                <span class="details-price"><%# Eval("currency") %>. <%# Eval("price") %></span>
                <div class="detail-btns">
                    <button type="button">add to cart</button>
                </div>
            </div>
        </section>
                </ItemTemplate>
                </asp:Repeater>


        <!-- related search -->
        <section class="related-products">
            <div class="related-header">other foods</div>
            <div class="related-context">
                <a href="./detail.html" class="related-item">
                    <span class="related-item-title"><span>chicken</span></span>
                    <img src="assets/imgs/categories/chicken/chicken bog.png" alt=""/>
                    <span class="shop-description"
                    >rich and creamy with a hint  flavour</span
                  >
                    <span class="shop-price">
                        shs.
                        <br />
                        25000
                      </span>
                    </a>

                    <a href="./detail.html" class="related-item">
                        <span class="related-item-title"><span>chicken</span></span>
                        <img src="assets/imgs/categories/chicken/Skhmeruli.png" alt=""/>
                        <span class="shop-description"
                        >delicious and hot</span
                      >
                        <span class="shop-price">
                            shs.
                            <br />
                            25000
                          </span>
                        </a>

                        <a href="./detail.html" class="related-item">
                            <span class="related-item-title"><span>plantain chips</span></span>
                            <img src="assets/imgs/categories/plantain chips.png" alt=""/>
                            <span class="shop-description"
                            >sweet and delicious</span
                          >
                            <span class="shop-price">
                                shs.
                                <br />
                                10000
                              </span>
                            </a>

                            <a href="./detail.html" class="related-item">
                                <span class="related-item-title"><span>chicken bog</span></span>
                                <img src="assets/imgs/categories/spanish.png" alt=""/>
                                <span class="shop-description"
                                >rich and creamy with a hint of chocolat flavour</span
                              >
                                <span class="shop-price">
                                    shs.
                                    <br />
                                    9000
                                  </span>
                                </a>
            </div>
        </section>
    </main>
</asp:Content>
