<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="restuarant.signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="signup-section">
        <section class="signup-banner-section">
            <div class="signup-banner-info">
                <h2>signup</h2>
                <p>
                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Et eum delectus laudantium ut quia expedita,
                </p>
            </div>

            <div class="signup-banner">
                <img src="assets/imgs/login/juice.jpg" alt="" />
            </div>
        </section>

        <hr />
        <!-- inputes -->
        <form runat="server" >
            <section class="signup-inputs-section">
                <div class="login-form-input-sect">
                    <label for="email"><!-- Email --></label>
                    <span><asp:TextBox runat="server" ID="email" Class="login-form-input" placeholder="Email"></asp:TextBox></span>
                </div>
                <div class="login-form-input-sect">
                    <label for="username"><!-- username --></label>
                    
                    <span><asp:TextBox runat="server" ID="username" Class="login-form-input" placeholder="Username"></asp:TextBox></span>
                </div>
                <div class="login-form-input-sect">
                    <label for="address"><!-- address --></label>
                    <span><asp:TextBox runat="server" ID="address" Class="login-form-input" placeholder="Address"></asp:TextBox></span>
                </div>
                <div class="login-form-input-sect">
                    <label for="country"><!-- country --></label>
                    <span><asp:TextBox runat="server" ID="country" Class="login-form-input" placeholder="Country"></asp:TextBox></span>
                </div>
                <div class="login-form-input-sect">
                    <label for="city"><!-- city--></label>
                    <span><asp:TextBox runat="server" ID="city" Class="login-form-input" placeholder="City"></asp:TextBox></span>
                </div>
                <div class="login-form-input-sect">
                    <label for="age"><!-- gender --></label>
                    <span><asp:TextBox runat="server" ID="gender" Class="login-form-input" placeholder="Gender"></asp:TextBox></span>
                </div>
                <div class="login-form-input-sect">
                    <label for="gender"><!-- dof --></label>
                    <span><asp:TextBox type="date" runat="server" ID="dof" Class="login-form-input" placeholder="Date Of Birth"></asp:TextBox></span>
                </div>
                <div class="login-form-input-sect">
                    <label for="tel"><!-- tel --></label>
                    <span><asp:TextBox runat="server" ID="tel" Class="login-form-input" placeholder="Tel"></asp:TextBox></span>
                </div>
                <div class="login-form-input-sect">
                    <label for="tel"><!-- password --></label>
                    <span><asp:TextBox TextMode="Password" runat="server" ID="password" Class="login-form-input" placeholder="Password"></asp:TextBox></span>
                </div>
                <div class="login-form-input-sect">
                    <label for="tel"><!-- confirm password --></label>
                    <span><asp:TextBox TextMode="Password" runat="server" ID="confirmpassword" Class="login-form-input" placeholder="Confirm Password"></asp:TextBox></span>
                </div>
                
            </section>
            <div class="signup-btn-section">
                <asp:Button CssClass="signup-btn" runat="server" Text="Signup" ID="signup_button" OnClick="signup_button_Click" />
            </div>
        </form>
        
    </main>
</asp:Content>
