<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OleSchoolAlumni.Home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Carousel Start -->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="images/oleschool6.jpeg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="images/oleschool5.jpeg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="images/oleschool7.jpeg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <!--Carousel End -->

    <!--About Section Start-->
    <div class="about px-4 py-5 my-5 text-center">
        <i class="fa-solid fa-graduation-cap" id="cap"></i>
        <h1 class="display-5 fw-bold">About Ole School</h1>
        <div class="col-lg-6 mx-auto">
            <p class="lead mb-4">The Ole School Alumni Scholarship Group (OSASG) is a diverse group comprised of James Madison University Alumni colleagues spanning over 35 years.  This group represents a professional network and recruitment liaison for underrepresented students.</p>
            <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                <asp:Button ID="btnLearnMore" runat="server" Text="Learn More" class="btn btn-primary btn-lg px-4 gap-3"  />
                <asp:Button ID="btnApply" runat="server" Text="Apply" class="btn btn-outline-secondary btn-lg px-4"  />
            </div>
        </div>
    </div>
    <!--About Section End-->

</asp:Content>
