<%@ Page Title="" Language="C#" MasterPageFile="~/Dash.Master" AutoEventWireup="true" CodeBehind="ApproveApps.aspx.cs" Inherits="OleSchoolAlumni.ApproveApps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminPlaceHolder" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Student Applicants</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <i class="fa-solid fa-user"></i>
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
                                <label>Username</label>
                                <div class="mb-3">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="txtUsername" runat="server" placeholder="Username"></asp:TextBox>
                                        <asp:Button CssClass="btn btn-primary" ID="btnSearchUser" runat="server" Text="Go" OnClick="btnSearchUser_Click" />
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>First Name</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtFirstName" runat="server" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtLastName" runat="server" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Email</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Phone Number </label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtPhone" runat="server" placeholder="Phone Number" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Expected Year of Graduation</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtGradY" runat="server" placeholder="(Ex. 2020)"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Major</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtMajor" runat="server" placeholder="Major"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:DropDownList CssClass="btn btn-block btn-secondary dropdown-toggle" ID="ddlYear" runat="server">
                                    <asp:ListItem Text="Freshman" Value="Freshman"></asp:ListItem>
                                    <asp:ListItem Text="Sophomore" Value="Sophomore"></asp:ListItem>
                                    <asp:ListItem Text="Junior" Value="Junior"></asp:ListItem>
                                    <asp:ListItem Text="Senior" Value="Senior"></asp:ListItem>
                                </asp:DropDownList>
                                <br />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:Button ID="btnApprove" CssClass="btn btn-lg btn-block btn-primary" runat="server" Text="Approve" OnClick="btnApprove_Click" />
                                <asp:Button ID="btnDeny" CssClass="btn btn-lg btn-block btn-danger" runat="server" Text="Deny" OnClick="btnDeny_Click" />
                                <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="AdminDashboard.aspx"><< Back to Home</a><br>
                <br>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Recently Accepted</h4>
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
                                <asp:GridView
                                    class="table table-striped table-bordered"
                                    ID="GridView1"
                                    runat="server"
                                    AllowSorting="true"
                                    AllowPaging="true"
                                    DataSourceID="sqlsrcStudentQuery"
                                    AutoGenerateEditButton="false"
                                    AutoGenerateColumns="false"
                                    DataKeyNames="StudentID">

                                    <Columns>
                                        <asp:BoundField ReadOnly="true" HeaderText="ID" DataField="StudentID" SortExpression="StudentID" />
                                        <asp:BoundField ReadOnly="true" HeaderText="Username" DataField="UserName" SortExpression="UserName" />
                                        <asp:BoundField HeaderText="First Name" DataField="FirstName" SortExpression="FirstName" />
                                        <asp:BoundField HeaderText="Last Name" DataField="LastName" SortExpression="LastName" />
                                        <asp:BoundField HeaderText="Email" DataField="EmailAddress" SortExpression="EmailAddress" />
                                        <asp:BoundField HeaderText="Phone" DataField="PhoneNumber" SortExpression="PhoneNumber" />
                                        <asp:BoundField HeaderText="Graduation Year" DataField="ExpectedGradYear" SortExpression="ExpectedGradYear" />
                                        <asp:BoundField HeaderText="Major" DataField="Major" SortExpression="Major" />
                                        <asp:BoundField HeaderText="Current Year" DataField="UniversityYear" SortExpression="UniversityYear" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                            <div>
                                <asp:SqlDataSource
                                    ID="sqlsrcStudentQuery"
                                    runat="server"
                                    ConnectionString="<%$ ConnectionStrings: AUTH %>"
                                    SelectCommand="Select * From Students"
                                    UpdateCommand="UPDATE Students SET StudentID@StudentID, FirstName=@FirstName, LastName=@LastName, EmailAddress=@EmailAddress, PhoneNumber=@PhoneNumber, ExpectedGradYear=@ExpectedGradYear, Major=@Major, UniversityYear=@UniversityYear WHERE StudentID=@StudentID">
                                    <UpdateParameters>
                                        <asp:Parameter Type="String" Name="StudentID" />
                                        <asp:Parameter Type="String" Name="FirstName" />
                                        <asp:Parameter Type="String" Name="LastName" />
                                        <asp:Parameter Type="String" Name="EmailAddress" />
                                        <asp:Parameter Type="String" Name="PhoneNumber" />
                                        <asp:Parameter Type="String" Name="ExpectedGradYear" />
                                        <asp:Parameter Type="String" Name="Major" />
                                        <asp:Parameter Type="String" Name="UniversityYear" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
