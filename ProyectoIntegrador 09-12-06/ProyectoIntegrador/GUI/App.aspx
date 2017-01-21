<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPageFrontEnd.Master" AutoEventWireup="true" CodeBehind="App.aspx.cs" Inherits="ProyectoIntegrador.GUI.App" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="scripHeader" runat="server">
    <link href="../css/font-awesome.min.css" rel="stylesheet" />
     <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/style2.css" rel="stylesheet" />

    <%--imagenes--%>
    
    <link href="../css/v-animation.css" rel="stylesheet" />
    <link href="../css/v-bg-stylish.css" rel="stylesheet" />
    <%--mayita azul fondo--%>
    <link href="../css/v-shortcodes.css" rel="stylesheet" />
    <link href="../css/theme-responsive.css" rel="stylesheet" />
    <link href="../plugins/owl-carousel/owl.theme.css" rel="stylesheet" />
    <link href="../plugins/owl-carousel/owl.carousel.css" rel="stylesheet" />

    <!-- Current Page CSS -->
   
    <link href="../plugins/rs-plugin/css/settings.css" rel="stylesheet" />
    <link href="../plugins/rs-plugin/css/custom-captions.css" rel="stylesheet" />
  
    <!-- Custom CSS -->
    
    <link rel="stylesheet" href="../css/custom.css"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    



    <div id="container">

        <!--Set your own slider options. Look at the v_RevolutionSlider() function in 'theme-core.js' file to see options-->
        

        <div class="v-page-wrap no-bottom-spacing">

            <div class="container">
                <div class="v-spacer col-sm-12 v-height-small"></div>
            </div>

            <!--Features-->
            <div class="container" id="features">

                <div class="row center">

                    <div class="col-sm-12">
                        <p class="v-smash-text-large-2x">
                            <span>Sorprendentes Caracteristicas</span>
                        </p>
                        <div class="horizontal-break"></div>
                        <p class="lead" style="color: #999;">
                            ¡Tenga a la mano información confiable sobre<br>
                            los lugares turisticos que visita!
                        </p>
                    </div>
                    <div class="v-spacer col-sm-12 v-height-standard"></div>
                </div>

                <div class="row features">

                    <div class="col-md-4 col-sm-4">
                        <div class="feature-box left-icon v-animation pull-top" data-animation="fade-from-left" data-delay="300">
                            <div class="feature-box-icon small">
                                <i class="fa glyphicon glyphicon-heart-empty v-icon"></i>
                            </div>
                            <div class="feature-box-text">
                                <h3>Interfaz Intuitiva</h3>
                                <div class="feature-box-text-inner">
                                    Una interfaz sencilla pero llamativa para facilitar su uso.
                                </div>
                            </div>
                        </div>

                        <div class="v-spacer col-sm-12 v-height-standard"></div>

                        <div class="feature-box left-icon v-animation" data-animation="fade-from-left" data-delay="600">
                            <div class="feature-box-icon small">
                                <i class="fa glyphicon glyphicon-camera v-icon"></i>
                            </div>
                            <div class="feature-box-text">
                                <h3>Incorporación de la Cámara</h3>
                                <div class="feature-box-text-inner">
                                    Toma y guarda tus fotografias directamente desde la App.
                                </div>
                            </div>
                        </div>

                        <div class="v-spacer col-sm-12 v-height-standard"></div>

                        <div class="feature-box left-icon v-animation" data-animation="fade-from-left" data-delay="900">
                            <div class="feature-box-icon small">
                                <i class="fa glyphicon glyphicon-refresh v-icon"></i>
                            </div>
                            <div class="feature-box-text">
                                <h3>Actualizaciones Constantes</h3>
                                <div class="feature-box-text-inner">
                                    Nuevas funciones y sitios de manera regular.
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-4">
                        <img class="img-responsive phone-image v-animation" data-animation="fade-from-bottom" data-delay="250" src="../img/landing/single-iphone.png" />
                    </div>

                    <div class="col-md-4 col-sm-4">
                        <div class="feature-box left-icon v-animation pull-top" data-animation="fade-from-right" data-delay="300">
                            <div class="feature-box-icon small">
                                <i class="fa glyphicon glyphicon-map-marker v-icon"></i>
                            </div>
                            <div class="feature-box-text">
                                <h3>Sitios Turisticos y Comercios</h3>
                                <div class="feature-box-text-inner">
                                    Información sobre las zonas turisticas del Centro Historico de Mérida.
                                </div>
                            </div>
                        </div>

                        <div class="v-spacer col-sm-12 v-height-standard"></div>

                        <div class="feature-box left-icon v-animation" data-animation="fade-from-right" data-delay="600">
                            <div class="feature-box-icon small">
                                <i class="fa glyphicon glyphicon-check v-icon"></i>
                            </div>
                            <div class="feature-box-text">
                                <h3>Eventos de la Ciudad</h3>
                                <div class="feature-box-text-inner">
                                    Revisa los horarios de los eventos realizados por el gobierno de la ciudad.<br />
                                </div>
                            </div>
                        </div>

                        <div class="v-spacer col-sm-12 v-height-standard"></div>

                        <div class="feature-box left-icon v-animation" data-animation="fade-from-right" data-delay="900">
                            <div class="feature-box-icon small">
                                <i class="fa glyphicon glyphicon-user v-icon"></i>
                            </div>
                            <div class="feature-box-text">
                                <h3>Soporte a Usuarios</h3>
                                <div class="feature-box-text-inner">
                                    Respuesta a dudas sobre la App o los planes de pago.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Features-->

            <div class="container">
                <div class="v-spacer col-sm-12 v-height-standard"></div>
            </div>

            <!--Why Us-->
            <div class="v-parallax v-bg-stylish v-bg-stylish-v4 no-shadow" id="why-us">
                <div class="container">
                    <div class="row app-brief">
                        <div class="col-sm-6">
                            <img class="img-responsive phone-image v-animation" data-animation="fade-from-left" data-delay="250" src="../img/landing/2-iphone-left.png" />
                        </div>

                        <div class="col-sm-6">
                            <p class="v-smash-text-large-2x pull-top">
                                <span>Disfruta Mérida</span>
                            </p>
                            <div class="horizontal-break left"></div>
                            <p class="v-lead">
                                Con Disfruta Mérida podrás conocer todos los sitios de interés turistico presentes en la ciudad de Mérida
                                así como también diversos locales y puestos comerciales para su disfrute, como hoteles, restaurantes, sitios de artesanias entre otros.
                                <br /><br />
                                Disfruta Mérida le ofrece información confiable de todos estos sitios como lo es el horario de visitas o de atención a clientes, localización 
                                exacta de estos lugares e información de interés para los turistas. 
                                <br /><br />

                               
                            </p>



                            <%--<div class="v-spacer col-sm-12 v-height-small"></div>

                            <ul class="v-list-v2">
                                <li class="v-animation" data-animation="fade-from-right" data-delay="150"><i class="fa fa-check"></i><span class="v-lead">Simple & with endless possibilties.</span></li>
                                <li class="v-animation" data-animation="fade-from-right" data-delay="300"><i class="fa fa-check"></i><span class="v-lead">Everything is perfectly orgainized for future.</span></li>
                                <li class="v-animation" data-animation="fade-from-right" data-delay="450"><i class="fa fa-check"></i><span class="v-lead">Sliders give you the opportunity to showcase.</span></li>
                                <li class="v-animation" data-animation="fade-from-right" data-delay="600"><i class="fa fa-check"></i><span class="v-lead">Multiple layout for home pages, portfolio & blog.</span></li>
                                <li class="v-animation" data-animation="fade-from-right" data-delay="750"><i class="fa fa-check"></i><span class="v-lead">The best way to grow your business</span></li>
                                <li class="v-animation" data-animation="fade-from-right" data-delay="900"><i class="fa fa-check"></i><span class="v-lead">Lorem ipsum dolor sit amet, consectetur.</span></li>
                            </ul>--%>
                        </div>
                    </div>
                </div>
            </div>
            <!--End Why Us-->

            <!--Describe-->
            <div class="v-parallax v-bg-stylish" id="describe">
                <div class="container">
                    <div class="row app-brief">
                        <div class="col-sm-6">
                            <p class="v-smash-text-large-2x pull-top">
                                <span>¿Eres Dueño de Algún Negocio en la Ciudad?</span>
                            </p>
                            <div class="horizontal-break left"></div>
                            <p class="v-lead">
                                
                                ¡Conviertete en nuestro socio!<br /><br />

                                Siendo socios podrás registrar tus locales o negocios y estos aparecerán en la App como recomendaciones 
                                para las personas que lo utilicen. 
                            </p>

                            <p class="v-lead">
                                Al registrarte tendras un mes de prueba donde se ofreceran todas las caracteristicas disponibles de la App, cuando el 
                                periodo de prueba termine podrás elegir uno de los diferentes planes de pagos que ofrecemos para continuar con los beneficios
                                que nuestra App ofrece.
                            </p>
                        </div>

                        <div class="col-sm-6">
                            <%--<img class="img-responsive phone-image v-animation" data-animation="fade-from-right" data-delay="300" src="../img/landing/2-iphone-right.png" />--%>

                            <!--Mapa-->
                                    <script type="text/javascript" src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyC6v5-2uaq_wusHDktM9ILcqIrlPtnZgEk&sensor=false">
                                    </script>
                                    <script type="text/javascript">
                                        function initialize() {
                                            var markers = JSON.parse('<%=ConvertDataTabletoString() %>');
                                            var mapOptions = {
                                            center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                                            zoom: 13,
                                            mapTypeId: google.maps.MapTypeId.ROADMAP
                                    //  marker:true
                                        };
                                            var infoWindow = new google.maps.InfoWindow();
                                            var map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
                                                for (i = 0; i < markers.length; i++) {
                                                    var data = markers[i]
                                                    var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                                                    var marker = new google.maps.Marker({
                                                        position: myLatlng,
                                                        map: map,
                                                        title: data.title
                                                    });
                                                    (function(marker, data) {

                                                    // Attaching a click event to the current marker
                                                    google.maps.event.addListener(marker, "click", function(e) {
                                                    infoWindow.setContent(data.description);
                                                    infoWindow.open(map, marker);
                                                    });
                                                    })(marker, data);
                                                        }
                                               }
                                     </script>

                                    <div id="map_canvas" style="width: 500px; height: 400px"></div>
                                    </center>  
                        </div>
                    </div>
                </div>
            </div>
            <!--End Describe-->

            <!--Services-->
           <%-- <div class="v-parallax v-parallax-video v-bg-stylish" id="services" style="background-image: url(../img/slider/slider4.jpg);">
                <div class="container">
                    <div class="row">

                        <div class="col-sm-4">
                            <div class="feature-box feature-box-secundary-one v-animation" data-animation="grow" data-delay="0">
                                <div class="feature-box-icon small">
                                    <i class="fa fa-laptop v-icon"></i>
                                </div>
                                <div class="feature-box-text clearfix">
                                    <h3>Incredibly Responsive</h3>
                                    <div class="feature-box-text-inner">
                                        <p>
                                            Class aptent taciti sociosqu ad litora torquent per conubia nostra,
                                                    per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.
                                        </p>

                                        <a href="#" class="read-more">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="feature-box feature-box-secundary-one v-animation" data-animation="grow" data-delay="200">
                                <div class="feature-box-icon small">
                                    <i class="fa fa-leaf v-icon"></i>
                                </div>
                                <div class="feature-box-text">
                                    <h3>Fully Customizible</h3>
                                    <div class="feature-box-text-inner">
                                        <p>
                                            Class aptent taciti sociosqu ad litora torquent per conubia nostra,
                                                    per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.<br />
                                        </p>
                                        <a href="#" class="read-more">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="feature-box feature-box-secundary-one v-animation" data-animation="grow" data-delay="400">
                                <div class="feature-box-icon small">
                                    <i class="fa fa-scissors v-icon"></i>
                                </div>
                                <div class="feature-box-text">
                                    <h3>Interactive Elements</h3>
                                    <div class="feature-box-text-inner">
                                        <p>
                                            Class aptent taciti sociosqu ad litora torquent per conubia nostra,
                                                    per inceptos himenaeos. Nulla nunc dui, tristique in semper vel.<br />
                                        </p>
                                        <a href="#" class="read-more">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="v-bg-overlay overlay-colored"></div>
                    </div>
                </div>
            </div>--%>
            <!--End Services-->

           

            

            <div class="container">
                <div class="v-spacer col-sm-12 v-height-standard"></div>
            </div>

            <!--Screenshots-->
            <%--<div class="v-parallax v-bg-stylish v-bg-stylish-v4 no-shadow" id="screenshots">
                <div class="container">
                    <div class="row center">
                        <div class="col-sm-12">
                            <p class="v-smash-text-large-2x">
                                <span> Capturas de la Aplicación</span>
                            </p>
                            <div class="horizontal-break"></div>
                            <p class="lead" style="color: #999;">
                                
                            </p>
                        </div>
                        <div class="v-spacer col-sm-12 v-height-standard"></div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">

                            <div class="carousel-wrap">

                                <div class="owl-carousel" data-plugin-options='{"items": 4, "singleItem": false, "pagination": true}'>
                                    <div class="item">
                                        <figure class="lightbox animated-overlay overlay-alt clearfix">
                                            <img src="../img/landing/1.jpg" class="attachment-full">
                                            <a class="view" href="../img/landing/1.jpg" rel="image-gallery"></a>
                                            <figcaption>
                                                <div class="thumb-info">
                                                    <h4></h4>
                                                    <i class="fa glyphicon glyphicon-eye-open"></i>
                                                </div>
                                            </figcaption>
                                        </figure>
                                    </div>

                                    <div class="item">
                                        <figure class="lightbox animated-overlay overlay-alt clearfix">
                                            <img src="../img/landing/2.jpg" class="attachment-full">
                                            <a class="view" href="../img/landing/2.jpg" rel="image-gallery"></a>
                                            <figcaption>
                                                <div class="thumb-info">
                                                    <h4></h4>
                                                    <i class="fa glyphicon glyphicon-eye-open"></i>
                                                </div>
                                            </figcaption>
                                        </figure>
                                    </div>

                                    <div class="item">
                                        <figure class="lightbox animated-overlay overlay-alt clearfix">
                                            <img src="../img/landing/3.jpg" class="attachment-full">
                                            <a class="view" href="../img/landing/3.jpg" rel="image-gallery"></a>
                                            <figcaption>
                                                <div class="thumb-info">
                                                    <h4></h4>
                                                    <i class="fa glyphicon glyphicon-eye-open"></i>
                                                </div>
                                            </figcaption>
                                        </figure>
                                    </div>

                                    <div class="item">
                                        <figure class="lightbox animated-overlay overlay-alt clearfix">
                                            <img src="../img/landing/4.jpg" class="attachment-full">
                                            <a class="view" href="../img/landing/4.jpg" rel="image-gallery"></a>
                                            <figcaption>
                                                <div class="thumb-info">
                                                    <h4></h4>
                                                    <i class="fa glyphicon glyphicon-eye-open"></i>
                                                </div>
                                            </figcaption>
                                        </figure>
                                    </div>

                                    <div class="item">
                                        <figure class="lightbox animated-overlay overlay-alt clearfix">
                                            <img src="../img/landing/1.jpg" class="attachment-full">
                                            <a class="view" href="../img/landing/1.jpg" rel="image-gallery"></a>
                                            <figcaption>
                                                <div class="thumb-info">
                                                    <h4></h4>
                                                    <i class="fa glyphicon glyphicon-eye-open"></i>
                                                </div>
                                            </figcaption>
                                        </figure>
                                    </div>

                                    <div class="item">
                                        <figure class="lightbox animated-overlay overlay-alt clearfix">
                                            <img src="../img/landing/2.jpg" class="attachment-full">
                                            <a class="view" href="../img/landing/2.jpg" rel="image-gallery"></a>
                                            <figcaption>
                                                <div class="thumb-info">
                                                    <h4></h4>
                                                    <i class="fa glyphicon glyphicon-eye-open"></i>
                                                </div>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
            <!--End Screenshots-->

            <!--Download-->
            <div class="v-parallax v-bg-stylish v-bg-stylish-v10" id="download" style="background-image: url(../img/slider/slider4.jpg);">

                <div class="container">
                    <div class="row center">

                        <div class="col-sm-12">

                            <div class="v-content-wrapper">
                                <p class="v-smash-text-large-2x">
                                    <span>Encuentra nuestra App en</span>
                                </p>

                                <div class="v-spacer col-sm-12 v-height-standard"></div>

                                <div id="intro_stores">
                                    <a href="#">
                                        <img src="../img/landing/appstore.png" alt="appstore_icon"></a>
                                    <a href="#">
                                        <img src="../img/GooglePlay.png" alt="google_icon"></a>
                                   
                                </div>

                                <div class="v-spacer col-sm-12 v-height-big"></div>

                            
                                <div class="v-spacer col-sm-12 v-height-small"></div>

                               
                            </div>

                        </div>

                        <div class="v-bg-overlay overlay-colored"></div>
                    </div>
                </div>
            </div>
            <!--End Download-->

            <!--Call Us-->
            <div class="v-parallax v-bg-stylish" id="contact-us">
                <div class="container">
                    <div class="row center">
                        <div class="col-sm-8 col-sm-offset-2">
                            <p class="v-smash-text-large-2x">
                                <span>¿Tienes dudas? ¡Contactanos!</span>
                            </p>
                            <br />
                            <p class="lead" style="color: #999;">
                                +52 9999 278641
                            </p>
                            <div class="horizontal-break"></div>

                            <div class="v-spacer col-sm-12 v-height-small"></div>



                            <form action="#" method="post">
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <label>Nombre <span class="required">*</span></label>
                                            <input type="text" value="" maxlength="100" class="form-control" name="name" id="name">
                                        </div>
                                        <div class="col-sm-4">
                                            <label>Correo Electronico <span class="required">*</span></label>
                                            <input type="email" value="" maxlength="100" class="form-control" name="email" id="email1">
                                        </div>
                                        <div class="col-sm-4">
                                            <label>Página Web</label>
                                            <input type="text" value="" maxlength="100" class="form-control" name="website" id="website">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label>Comentario <span class="required">*</span></label>
                                            <textarea maxlength="5000" rows="10" class="form-control" name="comment" id="Textarea1"></textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <br />
                                        <button name="submit" type="submit" id="sendmesage" class="btn v-btn no-three-d">Enviar Mensaje</button>
                                    </div>
                                </div>
                            </form> 

                        </div>
                    </div>

                    <div class="row">
                        <div class="v-spacer col-sm-12 v-height-small"></div>
                    </div>

                    <div class="row center">
                      <%--  <ul class="social-icons large center">
                            <li class="twitter"><a href="http://www.twitter.com/#" target="_blank"><i class="fa fa-twitter"></i><i class="fa fa-twitter"></i></a></li>
                            <li class="facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i><i class="fa fa-facebook"></i></a></li>
                            <li class="youtube"><a href="#" target="_blank"><i class="fa fa-youtube"></i><i class="fa fa-youtube"></i></a></li>
                            <li class="vimeo"><a href="http://www.vimeo.com/#" target="_blank"><i class="fa fa-vimeo-square"></i><i class="fa fa-vimeo-square"></i></a></li>
                            <li class="tumblr"><a href="http://tumblr.tumblr.com/" target="_blank"><i class="fa fa-tumblr"></i><i class="fa fa-tumblr"></i></a></li>
                            <li class="skype"><a href="skype:#" target="_blank"><i class="fa fa-skype"></i><i class="fa fa-skype"></i></a></li>
                            <li class="linkedin"><a href="#" target="_blank"><i class="fa fa-linkedin"></i><i class="fa fa-linkedin"></i></a></li>
                            <li class="googleplus"><a href="#" target="_blank"><i class="fa fa-google-plus"></i><i class="fa fa-google-plus"></i></a></li>
                        </ul>--%>
                    </div>
                </div>
            </div>
            <!--End Call Us-->
        </div>

        <!--Footer-Wrap-->
        
        <!--End Footer-Wrap-->
    </div>


    
          <!--// BACK TO TOP //-->
    <div id="back-to-top" class="animate-top"><i class="fa fa-angle-up"></i></div>

    <!-- Libs -->
    
    <script src="../js/jquery.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.flexslider-min.js"></script>
    <script src="../js/jquery.easing.js"></script>
    <script src="../js/jquery.fitvids.js"></script>
    <script src="../js/jquery.carouFredSel.min.js"></script>
    <script src="../js/theme-plugins.js"></script>
    <script src="../js/jquery.isotope.min.js"></script>
    <script src="../js/imagesloaded.js"></script>

    <script src="../js/view.min.js?auto"></script>

    <script src="plugins/rs-plugin/../js/jquery.themepunch.tools.min.js"></script>
    <script src="plugins/rs-plugin/../js/jquery.themepunch.revolution.min.js"></script>

    <script src="../js/theme-core.js"></script>
</asp:Content>
