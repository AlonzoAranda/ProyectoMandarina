<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPageFrontEnd.Master" AutoEventWireup="true" CodeBehind="sobre.aspx.cs" Inherits="ProyectoIntegrador.GUI.sobre" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripHeader" runat="server">
 
    <script src="../js/jquery-1.11.0.min.js"></script>
    
<!-- Custom Theme files -->
    <link href="../css/style.css" rel="stylesheet" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       
    <div class="banner">
		
	</div>
   <div class="divide30"></div>
 

    <div class="wide-img-showcase">

        <div class="row margin-0 wide-img-showcase-row">
            <div class="col-sm-6 no-padding  img-2 ">

                <div class="no-padding-inner ">
                
                        <img src="../img/2.png" />
                    <div>   &nbsp;</div>
                </div>
            </div>

            <div class="col-sm-6 col-sm-offset-6 no-padding gray">
                
                <div class="no-padding-inner gray">
                    <h3 class="wow animated fadeInDownfadeInRight">Información de <span class="colored-text">Disfruta Mérida</span></h3>
                    <div class="services-box margin30 wow animated fadeInRight">
                        <div class="services-box-icon">
                            <i class=" glyphicon glyphicon-send"></i>
                        </div><!--services icon-->
                        <div class="services-box-info">
                            <h4>Misión</h4>
                            <p>
                              Misión: nuestra misión como empresa es promover a las personas de Mérida el conocimiento  
                                de nuestra cultura por medio de un app interactiva, con la cual tendrán acceso a los datos
                                 culturales más importantes y que como meridense deben tener.  
                            </p>
                        </div>
                    </div><!--service box-->
                    <div class="services-box margin30 wow animated fadeInRight">
                        <div class="services-box-icon">
                            <i class="glyphicon glyphicon-eye-open"></i>
                        </div><!--services icon-->
                        <div class="services-box-info">
                            <h4>Visión</h4>
                            <p>
                               Visión: llegar a ser una herramienta indispensable en tu visita a Mérida y brindar un servicio de alta calidad.
                            </p>
                        </div>
                    </div><!--service box-->

                    <%--<div class="services-box margin30 wow animated fadeInRight">
                        <div class="services-box-icon">
                            <i class="fa fa-code"></i>
                        </div><!--services icon-->
                        <div class="services-box-info">
                            <h4>250+ valid HTML5 Pages and much more...</h4>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing metus. elit. Quisque rutrum pellentesque imperdiet.
                            </p>
                        </div>
                        <div class="divide30"></div>
                        <p><a href="#" class="btn btn-theme-dark btn-lg">Purchase Now</a></p>--%>
                </div><!--service box-->

                </div>
            </div>
        </div>
    
    <section class="fun-fact-wrap fun-facts-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-3 margin20 facts-in">
                    <h3><span class="counter">3800</span> +</h3>
                    <h4>Descargas</h4>
                </div><!--facts in-->
                <div class="col-md-3 margin20 facts-in">
                    <h3><span class="counter">8500</span></h3>
                    <h4>Clientes felices</h4>
                </div><!--facts in-->
                <div class="col-md-3 margin20 facts-in">
                    <h3><span class="counter">250</span> +</h3>
                    <h4> Validaciones </h4>
                </div><!--facts in-->
                <div class="col-md-3 margin20 facts-in">
                    <h3><span class="counter">11000</span></h3>
                    <h4>Trabajadores en el equipo</h4>
                </div><!--facts in-->
            </div>
        </div>
    </section><!--fun facts-->
    <div class="testimonials-v-2 wow animated fadeInUp" data-wow-duration="700ms" data-wow-delay="100ms">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <div class="center-heading">
                        <h2><strong>¿Qué dicen</strong> los clientes</h2>
                        <p>2600+ Es una excelente aplicación.</p>
                        <span class="center-line"></span>

                    </div>
                </div>
            </div><!--center heading end-->

            <div class="row">

                <div class="col-sm-8 col-sm-offset-2">
                    <div class="testi-slide">
                        <ul class="slides">
                            <li>
                                <img src="../img/tipo.png" />
                                <p>
                                    <i class="ion-quote"></i>
                                   Es una excelente app han aumentado mis ingresos.
                                </p>
                                <h4 class="test-author">
                                    Ricardo <em>Alonzo Mendez</em>
                                </h4>
                            </li><!--testi item-->
                            <li>
                                
                                <img src="../img/tipa.jpg" />
                                <p>
                                    <i class="ion-quote"></i>
                                    Es una excelente app han aumentado mis ingresos y todos vienen a mi negocio ahora, mi local es  más conocido.

                                </p>
                                <h4 class="test-author">
                                    Jellia - <em>Dueña de una local en el centro historico</em>
                                </h4>
                         <%--   </li><!--testi item-->
                            <li>
                                <img src="images/customer-3.jpg" alt="">
                                <p>
                                    <i class="ion-quote"></i>
                                    Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor.
                                </p>
                                <h4 class="test-author">
                                    Smith - <em>Ceo, company inc.</em>
                                </h4>
                            </li><!--testi item-->--%>
                        </ul>
                    </div><!--flex slider testimonials end here-->
                </div>
            </div><!--testi slider row end-->

        </div>
    </div><!--testimonials v-2 end-->
    <div class="blue-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 margin30">
                    <div class="services-box wow animated fadeInDown">
                        <div class="services-box-icon">
                            <i class="pe-7s-diamond"></i>
                        </div><!--services icon-->
                        <div class="services-box-info">
                            <h4>250+ Sitios Turisticos y Comercios</h4>
                            <p>
                             Información sobre las zonas turisticas del Centro Historico de Mérida.
                        </div>
                    </div><!--service box-->
                </div>
                <div class="col-sm-6 ">
                    <div class="services-box wow animated fadeInUp">
                        <div class="services-box-icon">
                            <i class="pe-7s-download"></i>
                        </div><!--services icon-->
                        <div class="services-box-info">
                            <h4>Soporte en todo momento</h4>
                            <p>
                                 Respuesta a dudas sobre la App o los planes de pago.2
                                                      </div>
                    </div><!--service box-->
                </div>
            </div>
        </div>
    </div><!--full wide 2 columns content end-->

   


</asp:Content>
