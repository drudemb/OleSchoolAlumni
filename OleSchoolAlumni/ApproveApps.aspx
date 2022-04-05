﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dash.Master" AutoEventWireup="true" CodeBehind="ApproveApps.aspx.cs" Inherits="OleSchoolAlumni.ApproveApps" %>
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
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="First Name"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>First Name</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Email</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Phone Number </label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Phone Number" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Expected Year of Graduation</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="(Ex. 2020)"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Major</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Major"></asp:TextBox>
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
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="Approve" />
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-danger" runat="server" Text="Deny" />
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>