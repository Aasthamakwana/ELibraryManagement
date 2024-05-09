<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="ELibraryManagement.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container d-flex justify-content-center align-items-center" id="UserLogin">
        <div class="row justify-content-center">
            <div class="col-md-6" style="width: 25rem">
                <div class="card">
                    <div class="card-body mt-4 mb-4">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/GeneralProfile.png" width="120px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox1" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="input-group">
                                    <asp:Button CssClass="btn btn-success w-100 my-2" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                                <div class="input-group">
                                    <a href="SignUp.aspx" class="w-100">
                                        <input class="btn btn-info w-100 my-2" id="Button2" type="button" value="Sign Up" />
                                    </a>
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
