<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="ELibraryManagement.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-flex justify-content-center align-items-center" id="AdminLogin">
    <div class="row justify-content-center">
        <div class="col-md-6" style="width: 25rem">
            <div class="card">
                <div class="card-body mt-4 mb-4">
                    <div class="row">
                        <div class="col">
                            <center>
                                <img src="Images/AdminProfile.png" width="120px" />
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <center>
                                <h3>Admin Login</h3>
                            </center>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control m-2" ID="TextBox1" runat="server" placeholder="Admin Username"></asp:TextBox>
                            </div>
                            <div class="input-group">
                                <asp:TextBox CssClass="form-control m-2" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="input-group">
                                <asp:Button CssClass="btn btn-success w-100 my-2" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a href="HomePage.aspx" class="text-center"><< Back to Home</a>
    </div>
</div>
</asp:Content>
