<%@ Page Title="" Language="C#" MasterPageFile="~/Dash.Master" AutoEventWireup="true" CodeBehind="Jobs.aspx.cs" Inherits="OleSchoolAlumni.Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="adminPlaceHolder" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="mx-auto">
                <div class="card">
                    <div class="card-header">
                        System Dev Engineer (Example)
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <h4>Amazon</h4>
                                <h6>(Arlington County, VA)</h6>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col">
                                <h5>About the role </h5>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Application Deadline:</label>
                                <div class="mb-3">
                                    <b>
                                        <asp:Label Text="6/20/2022" runat="server" />
                                    </b>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Remote:</label>
                                <div class="mb-3">
                                    <b>
                                        <asp:Label Text="Yes" runat="server" />
                                    </b>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Estimated Salary:</label>
                                <div class="mb-3">
                                    <b>
                                        <asp:Label Text="$25 per hour" runat="server" />
                                    </b>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>US work authorization:</label>
                                <div class="mb-3">
                                    <b>
                                        <asp:Label Text="Will sponsor a work visa" runat="server" />
                                    </b>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <b>
                                    <label>Job summary</label>
                                </b>
                                <div>
                                    Do you want to architect and develop new tools and software to help AWS customers implement the cloud-enabled solutions of tomorrow? Do you want to learn to work on complex business critical software and systems? Are you interested in working in a technical oriented team that aims at exceeding customer's expectation? Join us and help fortune 500 companies move their business critical legacy workflows to the cloud. AWS Professional Services is looking for System Development Engineers to help build our customers' next generation critical systems. Our team will engage with AWS customers to write code in multiple environments, migrate applications, modernize applications and instill DevOps solutions into mission critical customers. Our Engineers will be responsible for migrating legacy applications, developing automation, developing new applications, and updating applications to run on the AWS Cloud.
                                </div>
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:Button ID="btnApply" CssClass="btn btn-lg btn-block btn-primary" runat="server" Text="Apply" OnClick="btnApply_Click"/>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer text-muted">
                        Posted: 2 days ago
                    </div>

                </div>
                <hr />
            </div>
        </div>
    </div>

</asp:Content>
