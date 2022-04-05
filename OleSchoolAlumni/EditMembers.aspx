<%@ Page Title="" Language="C#" MasterPageFile="~/Dash.Master" AutoEventWireup="true" CodeBehind="EditMembers.aspx.cs" Inherits="OleSchoolAlumni.EditMembers" %>

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
                                    <h4>Add New Member</h4>
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
                            <div class="col-md-6">
                                <label>First Name</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Email</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Phone Number</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Phone Number" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Graduation Year</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Graduation Year"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Job Title</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Title"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Add" />
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
                                    <h4>Current Members</h4>
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
                                    DataSourceID="sqlsrcMemberQuery"
                                    AutoGenerateEditButton="true"
                                    AutoGenerateColumns="false"
                                    DataKeyNames="MemberID">
                                    <Columns>
                                        <asp:BoundField ReadOnly="true" HeaderText="Username" DataField="UserName" SortExpression="UserName" />
                                        <asp:BoundField HeaderText="First Name" DataField="FirstName" SortExpression="FirstName" />
                                        <asp:BoundField HeaderText="Last Name" DataField="LastName" SortExpression="LastName" />
                                        <asp:BoundField HeaderText="Email" DataField="EmailAddress" SortExpression="EmailAddress" />
                                        <asp:BoundField HeaderText="Phone" DataField="PhoneNumber" SortExpression="PhoneNumber" />
                                        <asp:BoundField HeaderText="Graduation Year" DataField="GraduationYear" SortExpression="GraduationYear" />
                                        <asp:BoundField HeaderText="Title" DataField="Title" SortExpression="Title" />
                                    </Columns>
                                </asp:GridView>
                                <div>
                                    <asp:SqlDataSource
                                        ID="sqlsrcMemberQuery"
                                        runat="server"
                                        ConnectionString="<%$ ConnectionStrings: OleDB%>"
                                        SelectCommand="Select * From Members"
                                        UpdateCommand="UPDATE Members SET FirstName=@FirstName, LastName=@LastName, EmailAddress=@EmailAddress, PhoneNumber=@PhoneNumber, GraduationYear=@GraduationYear, Title=@Title WHERE StudentID=@StudentID">
                                        <UpdateParameters>
                                            <asp:Parameter Type="String" Name="FirstName" />
                                            <asp:Parameter Type="String" Name="LastName" />
                                            <asp:Parameter Type="String" Name="EmailAddress" />
                                            <asp:Parameter Type="String" Name="PhoneNumber" />
                                            <asp:Parameter Type="String" Name="GraduationYear" />
                                            <asp:Parameter Type="String" Name="Title" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
