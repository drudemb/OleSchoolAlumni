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
        <i class="fa-solid fa-graduation-cap padding"></i>
        <h1 class="display-5 fw-bold padding">About Ole School</h1>
        <div class="col-lg-6 mx-auto">
            <p class="lead mb-4">The Ole School Alumni Scholarship Group (OSASG) is a diverse group comprised of James Madison University Alumni colleagues spanning over 35 years.  This group represents a professional network and recruitment liaison for underrepresented students.</p>
            <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                <button type="button" class="btn btn-primary btn-lg px-4 gap-3">Learn More</button>
                <button type="button" class="btn btn-outline-secondary btn-lg px-4">Apply</button>
            </div>
        </div>
    </div>
    <!--About Section End-->

    <!--Featurette Section-->
    <div class="row featurette padding">
        <div class="col-md-7 padding">
            <h2 class="padding featurette-heading">Guiding individuals on the path to succes</h2>
            <p class="padding lead">The mission of the OSASG is to serve as a continuing instrument to promote the positive diversity profile of JMU through aggressive recruitment and retention of qualified African American students, to ensure appropriate University representation, which includes students of all races and nationalities.</p>
            <p class="padding lead">The Fund serves as an automatic professional network of support to the JMU student community. </p>
            <button type="button" class="btn btn-primary btn-lg px-4 gap-3">Apply</button>
        </div>
        <div class="col-md-5 padding">
            <img class="img-fluid" src="images/pic2.webp" alt="">
        </div>
    </div>

    <div class="row featurette padding">
        <div class="col-md-7 order-md-2 padding">
            <h2 class="padding featurette-heading">Ole School is committed to helping Dukes. <span class="text-muted">See for yourself.</span></h2>
            <p class="padding lead">The Ole School Alumni Group (OSAG) partners with JMU in a variety of ways to build additional avenues of minority recruitment, retention and community engagement.</p>
            <p class="padding lead">
                We have OSAG members throughout the state of Virginia and surrounding areas who work with local schools in helping to provide information about JMU and serve as recruitment liaisons to the university.
       
            </p>
            <button type="button" class="btn btn-primary btn-lg px-4 gap-3">Connect</button>
        </div>
        <div class="col-md-5 order-md-1 padding">
            
        </div>
    </div>
    <!--Featurette Section End-->

</asp:Content>
