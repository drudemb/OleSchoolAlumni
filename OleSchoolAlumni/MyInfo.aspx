<%@ Page Title="" Language="C#" MasterPageFile="~/Dash.Master" AutoEventWireup="true" CodeBehind="MyInfo.aspx.cs" Inherits="OleSchoolAlumni.MyInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminPlaceHolder" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="mx-auto">
                <div class="card">
                    <!-- Member Section -->
                    <div id="MemberSection" runat="server" class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>My Information</h4>
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
                            </div>
                        </div>
                        <div>

                            <asp:SqlDataSource
                                ID="sqlsrcMemberQuery"
                                runat="server"
                                ConnectionString="<%$ ConnectionStrings: AUTH %>"
                                SelectCommand=""
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
                    <!-- Student Section -->
                    <div id="StudentSection" runat="server" class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>My Information</h4>
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
                                    ID="GridView3"
                                    runat="server"
                                    AllowSorting="true"
                                    AllowPaging="true"
                                    DataSourceID="sqlsrcStudentQuery"
                                    AutoGenerateEditButton="true"
                                    AutoGenerateColumns="false"
                                    DataKeyNames="StudentID">
                                    <Columns>
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
                        </div>
                        <div>

                            <asp:SqlDataSource
                                ID="sqlsrcStudentQuery"
                                runat="server"
                                ConnectionString="<%$ ConnectionStrings: AUTH %>"
                                SelectCommand=""
                                UpdateCommand="UPDATE Students SET FirstName=@FirstName, LastName=@LastName, EmailAddress=@EmailAddress, PhoneNumber=@PhoneNumber, ExpectedGradYear=@ExpectedGradYear, Major=@Major, UniversityYear=@UniversityYear, InternshipStatus=@InternshipStatus, EmploymentStatus=@EmploymentStatus WHERE StudentID=@StudentID">
                                <UpdateParameters>
                                    <asp:Parameter Type="String" Name="FirstName" />
                                    <asp:Parameter Type="String" Name="LastName" />
                                    <asp:Parameter Type="String" Name="EmailAddress" />
                                    <asp:Parameter Type="String" Name="PhoneNumber" />
                                    <asp:Parameter Type="String" Name="ExpectedGradYear" />
                                    <asp:Parameter Type="String" Name="Major" />
                                    <asp:Parameter Type="String" Name="UniversityYear" />
                                    <asp:Parameter Type="String" Name="InternshipStatus" />
                                    <asp:Parameter Type="String" Name="EmploymentStatus" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
