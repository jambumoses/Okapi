<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="restuarant.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="login-section">
        <section class="login-container">
            <div class="login-banner">
                <img src="assets/imgs/login/juice.jpg" alt=""/>
            </div>
            <form runat="server" class="login-form">
                <h2>login</h2>
                <div class="login-form-input-sect">
                    <label for="email"><!-- Email --></label>
                    <span>
                        <asp:TextBox  runat="server" ID="email" placeholder="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="validate-login" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>
                </div>
                <div class="login-form-input-sect">
                    <label for="password"><!-- Password --></label>
                    <span>
                        <asp:TextBox TextMode="Password" runat="server" ID="passwordField" placeholder="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" CssClass="validate-login" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="passwordField" ForeColor="Red"></asp:RequiredFieldValidator>
                    </span>
                </div>

                <span class="remember-me"> <asp:CheckBox ID="RememberMeCheckBox" runat="server" /> Remember Me </span>

                <div class="login-form-input-sect">
                    <span class="login-btn"><asp:Button ID="loginBtn" runat="server" Text="Login" /></span>
                </div>

                <asp:Label ID="iblError" runat="server"></asp:Label>
            </form>
        </section>
    </main>
</asp:Content>
