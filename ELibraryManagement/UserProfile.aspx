<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="ELibraryManagement.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">
$(document).ready(function () {
    $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
});
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" id="UserProfile">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/GeneralProfile.png" width="90px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                    <span>Account Status-</span>
                                    <asp:Label ID="Label1" class="badge text-bg-secondary" runat="server" Text="Your Status"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact No</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox4" runat="server" TextMode="Email" placeholder="Email ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="input-group">
                                    <asp:DropDownList CssClass="form-control m-2" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Assam" Value="Assam"></asp:ListItem>
                                        <asp:ListItem Text="Bihar" Value="Bihar"></asp:ListItem>
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh"></asp:ListItem>
                                        <asp:ListItem Text="Goa" Value="Goa"></asp:ListItem>
                                        <asp:ListItem Text="Gujarat" Value="Gujarat"></asp:ListItem>
                                        <asp:ListItem Text="Haryana" Value="Haryana"></asp:ListItem>
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand"></asp:ListItem>
                                        <asp:ListItem Text="Karnataka" Value="Karnataka"></asp:ListItem>
                                        <asp:ListItem Text="Kerala" Value="Kerala"></asp:ListItem>
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra"></asp:ListItem>
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Manipur" Value="Manipur"></asp:ListItem>
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya"></asp:ListItem>
                                        <asp:ListItem Text="Mizoram" Value="Mizoram"></asp:ListItem>
                                        <asp:ListItem Text="Nagaland" Value="Nagaland"></asp:ListItem>
                                        <asp:ListItem Text="Odisha" Value="Odisha"></asp:ListItem>
                                        <asp:ListItem Text="Punjab" Value="Punjab"></asp:ListItem>
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan"></asp:ListItem>
                                        <asp:ListItem Text="Sikkim" Value="Sikkim"></asp:ListItem>
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu"></asp:ListItem>
                                        <asp:ListItem Text="Tripura" Value="Tripura"></asp:ListItem>
                                        <asp:ListItem Text="Telangana" Value="Telangana"></asp:ListItem>
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand"></asp:ListItem>
                                        <asp:ListItem Text="West Bengal" Value="West Bengal"></asp:ListItem>
                                        <asp:ListItem Text="Chandigarh" Value="Chandigarh"></asp:ListItem>
                                        <asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
                                        <asp:ListItem Text="Jammu & Kashmir" Value="Jammu & Kashmir"></asp:ListItem>
                                        <asp:ListItem Text="Ladakh" Value="Ladakh"></asp:ListItem>
                                        <asp:ListItem Text="Lakshadweep" Value="Lakshadweep"></asp:ListItem>
                                        <asp:ListItem Text="Puducherry" Value="Puducherry"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox7" runat="server" TextMode="Number" placeholder="Pincode"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox5" runat="server" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <span class="badge text-bg-secondary">Login Credentials</span>
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <label>User ID</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Old Password</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox9" runat="server" TextMode="Password" placeholder="Old Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>New Password</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox10" runat="server" TextMode="Password" placeholder="New Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="input-group d-flex justify-content-center">
                                    <asp:Button class="btn btn-primary my-2" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/IssueBooks.png" width="90px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Issued Books</h4>
                                    <asp:Label class="badge text-bg-secondary" runat="server" Text="Info about book due date"></asp:Label>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:GridView ID="GridView1" class="table table-stripped table-bordered" runat="server" OnRowDataBound="GridView1_RowDataBound"></asp:GridView> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a href="HomePage.aspx" class="text-center"><< Back to Home</a>
        </div>
    </div>
</asp:Content>
