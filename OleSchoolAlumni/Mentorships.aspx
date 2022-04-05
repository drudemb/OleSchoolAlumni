<%@ Page Title="" Language="C#" MasterPageFile="~/Dash.Master" AutoEventWireup="true" CodeBehind="Mentorships.aspx.cs" Inherits="OleSchoolAlumni.Mentorships" %>

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
                                    <h4>Assign Mentors to Students</h4>
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
                                <label>Member</label>
                                <div class="mb-3">
                                    <asp:DropDownList CssClass="btn btn-block btn-secondary dropdown-toggle" ID="ddlMemberSelection" runat="server" AutoPostBack="true" DataSourceID="SqlSourceMembersTable" DataTextField="FullName" DataValueField="MemberID"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Student</label>
                                <div class="mb-3">
                                    <asp:DropDownList CssClass="btn btn-block btn-secondary dropdown-toggle" ID="ddlStudentSelection" runat="server" AutoPostBack="true" DataSourceID="SqlSourceStudentsTable" DataTextField="FullName" DataValueField="StudentID"></asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <asp:SqlDataSource ID="SqlSourceStudentsTable" runat="server" ConnectionString="<%$ ConnectionStrings:OleDB %>" ProviderName="System.Data.SqlClient"
                            SelectCommand="SELECT FirstName + ' ' + LastName AS FullName, StudentID FROM Students"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlSourceMembersTable" runat="server" ConnectionString="<%$ ConnectionStrings:OleDB %>" ProviderName="System.Data.SqlClient"
                            SelectCommand="SELECT FirstName + ' ' + LastName as FullName, MemberID FROM Members"></asp:SqlDataSource>

                        <div class="row">
                            <div class="col">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Assign" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="Dashboard.aspx"><< Back to Home</a><br>
                <br>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Mentorship List</h4>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
