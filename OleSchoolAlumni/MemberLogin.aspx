<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="MemberLogin.aspx.cs" Inherits="OleSchoolAlumni.MemberLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/adminuser.png" />
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
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Member ID</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtMemberID" runat="server" placeholder="Member ID"></asp:TextBox>

                                </div>
                                <label>Password</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtMembPass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>

                                </div>
                                <div class="mb-3">
                                    <asp:Button class="btn btn-success col-12 btn-lg" ID="btnMembLogin" runat="server" Text="Login" />
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
    <br />
</asp:Content>
