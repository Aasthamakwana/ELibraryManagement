<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagement.aspx.cs" Inherits="ELibraryManagement.AdminMemberManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    $(document).ready(function () {
        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
    });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" id="AdminBookIssuing">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/GeneralProfile.png" width="90px" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholer="Member ID"></asp:TextBox>
                                    <asp:Button CssClass="btn btn-secondary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Full Name</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholer="Member Name" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label>Account Status</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" ReadOnly="true"></asp:TextBox>
                                    <asp:LinkButton CssClass="btn btn-success me-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                    <asp:LinkButton CssClass="btn btn-secondary me-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><i class="fa-solid fa-circle-pause"></i></asp:LinkButton>
                                    <asp:LinkButton CssClass="btn btn-danger me-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><i class="fa-solid fa-circle-xmark"></i></asp:LinkButton>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Date of Birth</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox11" runat="server" placeholder="Date of Birth" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Contact No</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Phone" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Email ID</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox4" runat="server" TextMode="Email" placeholder="Email ID" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox8" runat="server" placeholder="State" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox6" runat="server" placeholder="City" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox7" runat="server" TextMode="Number" placeholder="Pincode" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control m-2" ID="TextBox5" runat="server" placeholder="Full Address" ReadOnly="true" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="input-group d-flex justify-content-center">
                                    <asp:Button class="btn btn-sm btn-danger my-2" ID="Button3" runat="server" Text="Delete User Permanently" OnClick="Button3_Click" />
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
                <a href="HomePage.aspx" class="text-center"><< Back to Home</a>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Members' List</h4>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryManagementConnectionString %>" SelectCommand="SELECT * FROM [member_master_table]" OnDataBinding="SqlDataSource1_DataBinding"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" class="table table-stripped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" SortExpression="member_id" ReadOnly="True" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact No." SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
