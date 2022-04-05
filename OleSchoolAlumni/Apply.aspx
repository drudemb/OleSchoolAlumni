<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="OleSchoolAlumni.Apply" %>
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
                                    <img width="100px" src="images/generaluser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Student Registration</h4>
                                    <span>Account Status - </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
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
                                    <asp:TextBox CssClass="form-control" ID="txtFName" runat="server" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtLName" runat="server" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Phone Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtPhone" runat="server" placeholder="Phone #" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Graduation Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txtGradDate" runat="server" placeholder="(Ex: May 2022)"></asp:TextBox>
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
                            <div class="col-md-6 mx-auto">
                                <label>Year at College</label>
                                <div class="mb-3 ">
                                    <asp:DropDownList class="form-control dropdown-toggle" ID="ddlYear" runat="server">
                                        <asp:ListItem Text="Freshman" Value="Freshman"></asp:ListItem>
                                        <asp:ListItem Text="Sophomore" Value="Sophomore"></asp:ListItem>
                                        <asp:ListItem Text="Junior" Value="Junior"></asp:ListItem>
                                        <asp:ListItem Text="Senior" Value="Senior"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Create Your ID</label>
                                <div class="mb-3">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Create a Password</label>
                                <div class="mb-3">
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="mb-3">
                                <label>Upload Your Resume (PDF only)</label>

                                <input type="file" class="form-control" id="customFileResume" />

                            </div>
                            <div class="mb-3">
                                <label>Upload Your Current Transcript (PDF only)</label>

                                <input type="file" class="form-control" id="customFileTranscript" />

                            </div>
                            <div class="mb-3">
                                <label>Upload Your Essay (PDF only)</label>

                                <input type="file" class="form-control" id="customFileEssay" />

                                <div class="mb-3">
                                    <hr>
                                    <p>500 Word Essay: Describe your concept of diversity, and what experiences have you had that inform your thoughts.</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="mb-3 ">
                                <center>
                                    <div class="mb-3 d-grid gap-2">
                                        <hr>
                                        <asp:Button  CssClass="btn btn-success" ID="btnSubmitApp" runat="server" Text="Submit Application" />
                                    </div>
                                </center>
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
