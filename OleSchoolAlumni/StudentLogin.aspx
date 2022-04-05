<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="OleSchoolAlumni.StudentLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--- Student login --->
    <br />
    <div id="divStudentLogin" class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/generaluser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Student Login</h3>
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
                                <label>Student ID</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtUserID" runat="server" placeholder="Username"></asp:TextBox>
                                </div>
                                <label>Password</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtUserPass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="mb-3 d-grid gap-2">
                                    <asp:Button ID="btnStudentLogin" runat="server" Text="Login" CssClass="btn btn-success" OnClick="btnStudentLogin_Click"/>

                                    <asp:Button class="btn btn-primary" ID="btnApply" runat="server" Text="Apply" OnClick="btnApply_Click"/>
                                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="Home.aspx"><< Back to Home</a><br>
                <br>
            </div>
        </div>
    </div>
</asp:Content>
