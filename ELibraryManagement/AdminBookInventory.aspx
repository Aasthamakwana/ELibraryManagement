<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookInventory.aspx.cs" Inherits="ELibraryManagement.AdminBookInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#imgView').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" id="AdminBookInventory">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>.Book Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgView" src="Book_Inventory/GeneralCover.png" width="90px" height="130px" />
                                </center>
                            </div>
                        </div>

                        <div class="row mb-2 mt-3">
                            <div class="col">
                                <asp:FileUpload onchange="readURL(this);" CssClass="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-md-3">
                                <label>Book ID</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                    <asp:Button CssClass="btn btn-secondary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                </div>
                            </div>

                            <div class="col-md-9">
                                <label>Book Name</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Power of your subconcious mind"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-md-4">
                                <label>Language</label>
                                <div class="input-group mb-2">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="English" Value="English"></asp:ListItem>
                                        <asp:ListItem Text="Hindi" Value="Hindi"></asp:ListItem>
                                        <asp:ListItem Text="Marathi" Value="Marathi"></asp:ListItem>
                                        <asp:ListItem Text="French" Value="French"></asp:ListItem>
                                        <asp:ListItem Text="German" Value="German"></asp:ListItem>
                                        <asp:ListItem Text="Urdu" Value="Urdu"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <label>Publisher Name</label>
                                <div class="input-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1"></asp:ListItem>
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Author Name</label>
                                <div class="input-group mb-2">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Author 1" Value="Author 1"></asp:ListItem>
                                        <asp:ListItem Text="Author 2" Value="Author 2"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <label>Publish Date</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Date" placeholder="Publish Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Genre</label>
                                <div class="input-group">
                                    <asp:ListBox runat="server" SelectionMode="Multiple" ID="ListBox1" CssClass="form-control" Rows="4">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Action" Value="Action"></asp:ListItem>
                                        <asp:ListItem Text="Adventure" Value="Adventure"></asp:ListItem>
                                        <asp:ListItem Text="Comic Book" Value="Comic Book"></asp:ListItem>
                                        <asp:ListItem Text="Fiction" Value="Comic Book"></asp:ListItem>
                                        <asp:ListItem Text="Self Help" Value="Self Help"></asp:ListItem>
                                        <asp:ListItem Text="Motivation" Value="Motivation"></asp:ListItem>
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living"></asp:ListItem>
                                        <asp:ListItem Text="Wellness" Value="Wellness"></asp:ListItem>
                                        <asp:ListItem Text="Crime" Value="Crime"></asp:ListItem>
                                        <asp:ListItem Text="Drama" Value="Drama"></asp:ListItem>
                                        <asp:ListItem Text="Fantasy" Value="Fantasy"></asp:ListItem>
                                        <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>
                                        <asp:ListItem Text="Poetry" Value="Poetry"></asp:ListItem>
                                        <asp:ListItem Text="Personal Development" Value="Personal Development"></asp:ListItem>
                                        <asp:ListItem Text="Romance" Value="Romance"></asp:ListItem>
                                        <asp:ListItem Text="Science fiction" Value="Science fiction"></asp:ListItem>
                                        <asp:ListItem Text="Suspense" Value="Suspense"></asp:ListItem>
                                        <asp:ListItem Text="Thriller" Value="Thriller"></asp:ListItem>
                                        <asp:ListItem Text="Art" Value="Art"></asp:ListItem>
                                        <asp:ListItem Text="Autobiography" Value="Autobiography"></asp:ListItem>
                                        <asp:ListItem Text="Encyclopedia" Value="Encyclopedia"></asp:ListItem>
                                        <asp:ListItem Text="Health" Value="Health"></asp:ListItem>
                                        <asp:ListItem Text="History" Value="History"></asp:ListItem>
                                        <asp:ListItem Text="Math" Value="Math"></asp:ListItem>
                                        <asp:ListItem Text="Textbook" Value="Textbook"></asp:ListItem>
                                        <asp:ListItem Text="Science" Value="Science"></asp:ListItem>
                                        <asp:ListItem Text="Travel" Value="Travel"></asp:ListItem>

                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-md-4">
                                <label>Edition</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="1st"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Book Cost(per unit)</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="100" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" TextMode="Number" placeholder="100"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-md-4">
                                <label>Actual Stock</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="13" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Current Stock</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="12" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issued Books</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" TextMode="Number" placeholder="1" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row mb-2">
                            <div class="col">
                                <label>Book Description</label>
                                <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder=" Think of it as your brain's backstage pass to the ultimate self-improvement concert, where your subconscious is the headlining act, belting out affirmations and manifesting your dreams while you're busy binge-watching Netflix." TextMode="MultiLine" Rows="4"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-4 justify-content-center d-flex">
                                <asp:Button CssClass="btn btn-success w-100" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4 justify-content-center d-flex">
                                <asp:Button CssClass="btn btn-primary w-100" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4 justify-content-center d-flex">
                                <asp:Button CssClass="btn btn-danger w-100" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
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
                                    <h4>Book Inventory List</h4>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryManagementConnectionString %>" SelectCommand="SELECT * FROM [book_master_table]"></asp:SqlDataSource>
                                <asp:GridView ID="GridView1" class="table table-stripped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Author -
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| Genre -
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;| Language -&nbsp;
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Publisher -
                                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| Publish Date -
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publisher_date") %>'></asp:Label>
                                                                    &nbsp;| Pages -
                                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp;| Edition -
                                                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Cost -
                                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Actual Stock -
                                                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Available -
                                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Description -
                                                                    <asp:Label ID="Label12" runat="server" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image ID="Image1" CssClass="img-fluid p-1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
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
