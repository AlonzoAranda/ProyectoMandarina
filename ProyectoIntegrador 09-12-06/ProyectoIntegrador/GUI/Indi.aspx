<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPageFrontEnd.Master" AutoEventWireup="true" CodeBehind="Indi.aspx.cs" Inherits="ProyectoIntegrador.GUI.Indi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripHeader" runat="server">
  <%--  <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
            });
        });
    </script>
    <script src="../js/jquery.min.js"></script>--%>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--    <div class="demo-2">
        <div id="example2" class="core-slider core-slider__carousel example_2">
            <div class="core-slider_viewport">
                <div class="core-slider_list">

                    <div class="core-slider_item">


                        <img src="../img/ilumina.jpg" class="img-responsive" alt="" />
                    </div>

                    <div class="core-slider_item">

                        <img src="../img/ba1.jpg" class="img-responsive" alt="" />
                    </div>

                    <div class="core-slider_item">
                        <img src="../img/ba3.jpg" class="img-responsive" alt="" />
                    </div>

                </div>
            </div>
            <div class="core-slider_nav">
                <div class="core-slider_arrow core-slider_arrow__right"></div>
                <div class="core-slider_arrow core-slider_arrow__left"></div>
            </div>
            <div class="core-slider_control-nav"></div>
        </div>
    </div>
    <link href="../css/coreSlider.css" rel="stylesheet" type="text/css" />
    <script src="../js/coreSlider.js"></script>


    <script>
        $('#example1').coreSlider({
            pauseOnHover: false,
            interval: 3000,
            controlNavEnabled: true
        });
        $('#example2').coreSlider({
            clone: true,
            cloneItems: 3
        });
    </script>--%>
      <div id="carousel-slider" class="carousel carousel-slider-wrapper slide" data-ride="carousel">
            <!-- Carousel indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-slider" data-slide-to="1"></li>
                <li data-target="#carousel-slider" data-slide-to="2"></li>
            </ol>   
            <!-- Carousel items -->
            <div class="carousel-inner">
                <div class="item  active" id="carousel-slide-1">
                    <div class="carousel-overlay">
                        <div class="carousel-item-content">
                             <div class="container">
                                 <div class="animated fadeInDown delay-1">
                                     <h1>Disfruta Mérida</h1>
                                 </div>
                                 <div class="animated fadeInUp delay-2">
                                     <p>Ciudad blanca y pacífica </p>
                                 </div>
                             </div>
                         </div>
                    </div>
                </div><!--item-->
                <div class="item " id="carousel-slide-2">
                     <div class="carousel-overlay">
                         <div class="carousel-item-content">
                             <div class="container">
                                 <div class="animated fadeInLeft delay-1">
                                     <h1>Conoce más sobre está hermosa ciudad</h1>
                                 </div>
                                 <div class="animated fadeInRight delay-2">
                                     <p>Por medio de nuestr app encuentra siempre lo que buscas</p>
                                 </div>
                             </div>
                         </div>
                    </div>
                </div><!--item-->
                <div class="item " id="carousel-slide-3">
                   <div class="carousel-overlay">
                        <div class="carousel-item-content">
                             <div class="container">
                                 <div class="animated fadeInUp delay-1">
                                     <h1>conviertete en socio</h1>
                                 </div>
                                 <div class="animated fadeInUp delay-2">
                                     <p>Aumenta las ventas en tu local</p>
                                 </div>
                             </div>
                         </div>
                    </div>
                </div><!--item-->
            </div><!--carousel inner-->
            <!-- Carousel nav -->
            <a class="carousel-control left" href="#carousel-slider" data-slide="prev">
                <i class="glyphicon glyphicon-chevron-left"></i>
            </a>
            <a class="carousel-control right" href="#carousel-slider" data-slide="next">
                <i class="glyphicon glyphicon-chevron-right"></i>
            </a>
        </div><!--carousel slider-->





    <div class="welcome">
        <div class="container">
            <div class="col-md-6 welcome-left">
                <h1 class="wow fadeInLeft animated animated" data-wow-delay=".5s">Bienvenido</h1>
                <h4 class="wow fadeInLeft animated animated" data-wow-delay=".5s">Siempre estaremos disponibles para los turistas para brindarles una experiencia más grata así ayudar al turismo  de Mérida, y esperar que los turistas vuelvan a nuestra hermosa tierra Mérida en el futuro..</h4>
           <%--     <p class="wow fadeInLeft animated animated" data-wow-delay=".5s">Sed posuere laoreet neque, eu rhoncus libero accumsan eget. Morbi tempor nibh ullamcorper urna hendrerit, at molestie tortor molestie. Suspendisse vel porttitor metus, vitae luctus velit. Donec dictum suscipit orci nec facilisis. Sed pretium eu diam id tincidunt. </p>
         --%>   </div>
            <div class="col-md-6 welcome-right">
                <div class="welcome-right-top wow fadeInUp animated animated" data-wow-delay=".5s">
                    <img src="../img/catedral.jpg" />
                </div>
                <div class="welcome-right-bottom wow fadeInRight animated animated" data-wow-delay=".5s">
                    <img src="../img/yu.jpg" />
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //welcome -->
    <!-- welcome-bottom -->
    <div class=" divide60"></div>

    <div class="welcome-bottom">
        <div class="col-md-6 welcome-bottom-left">
            <div class="welcome-bottom-left-grid">
                <h3 class="wow fadeInUp animated animated" data-wow-delay=".5s">Animate a conocer y disfrutar Mérida</h3>
                <h4 class="wow fadeInUp animated animated" data-wow-delay=".5s">Mérida fue fundada el 6 de enero de 1542 por el español Francisco de Montejo el Mozo y cien familias españolas.</h4>
                <p class="wow fadeInUp animated animated" data-wow-delay=".5s">
                    Esta ciudad fue construida sobre las ruinas de la población maya Ichkaansihó, que en maya significa 'Cinco cerros', también conocida como T'Hó, ya abandonada a la llegada de los españoles, en el siglo XVI.
                </p>
                <br />
                <br />
                <br />
                <br />

             <%--   <div class="more-button welcome-button wow fadeInUp animated animated" data-wow-delay=".5s">
                    <a href="single.html">Clic aquí	</a>
                </div>--%>
            </div>
        </div>
        <div class="col-md-6 welcome-bottom-right">
            <div class="welcome-bottom-right-top-info wow zoomIn animated animated" data-wow-delay=".5s">
                <div class="welcome-bottom-right-top">
                    <div class="welcome-bottom-right-info">
                        <h3>Lugares que no te puedes perder </h3>
                        <div class="more-button welcome-right-button">
                            <a href="Galeria.aspx">Clic aquí</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>


    <!-- //welcome-bottom -->
    <!-- services --->
    <div class="services">
        <div class="container">
            <div class="services-info">
                <h1 class="wow fadeInUp animated animated" data-wow-delay=".5s">Nuestros servicios y más...</h1>
            </div>
            <div class="services-grids">
                <div class="col-md-4 services-grid wow fadeInLeft animated animated" data-wow-delay=".5s">
                    <div class="services-grid-top">
                        <div class="services-grid-img">
                            <img src="../img/Calandrina.jpg" />

                        </div>
                        <div class="services-grid-info">
                            <h4>Disfruta de los paseos</h4>
                            <p>
                                Vive la experiencia de viajar abordo de las famosas "Calandrinas", algo que no te puedes perder en tu 
                                visita a Mérida.
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 services-grid wow fadeInUp animated animated" data-wow-delay=".5s">
                    <div class="services-grid-top">
                        <div class="services-grid-info">
                            <h4>Conoce los sitios importantes en Mérida</h4>
                            <p>
                                Por ejemplo disfruta de la experiencia de visitar la catedral del centro de Mérida, No puedes dejar pasar
                                la oportunidad de tomarte una foto!.
                            </p>
                        </div>
                        <div class="services-grid-img">
                            <img src="../img/catedral.jpg" />
                        </div>
                    </div>
                </div>
                <div class="col-md-4 services-grid">
                    <div class="services-right wow fadeInRight animated animated" data-wow-delay=".5s">
                        <h4>Lugares turísticos</h4>
                        <p>Vive la  experiencia de visitar los sitios más importantes en Mérida</p>
                    </div>
                    <div class="services-right services-right-middle wow fadeInRight animated animated" data-wow-delay=".5s">
                        <h4>Rutas</h4>
                        <p>Vive la experiencia de la biciruta, el turibus entre otros...</p>
                    </div>
                    <div class="services-right wow fadeInRight animated animated" data-wow-delay=".5s">
                        <h4>Eventos</h4>
                        <p>Mantente informado de los enventos que pasaran en Mérida</p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>




    <div class="divide30"></div>


    <%--<section class="about">
<div class="container">
<div class="row">
<div class="col-lg-12 col-md-12">
<h2 class="main-title">Conviértete en socio. </h2>
<h4 class="sub-title">Da a conocer tu negocio con las mejores promociones.</h4>
</div>
</div>
 
<div class="row">
<div id="pricing-table" class="clear">
<div class="col-lg-4 col-md-3 col-sm-6">
<div class="plan" >
<h3>Promoción<span><i>$</i><strong>00</strong>.00</span> </h3>
<ul>
<li>Durante 1 meses / Al suscribirse </li>
<li>Promoción</li>
<li>Disfruta Mérida</li>

</ul>
 <asp:Button ID="Button2" runat="server" Text="Pidela ya" OnClick="btn6meses_Click" CssClass="but1" /> 
</div>
</div>
<div class="col-lg-4 col-md-3  col-sm-6">
<div class="plan green">
<h3>Basico<span><i>$</i><strong>80</strong>.00</span> </h3>
<ul>
<li>Durante 1 mes</li>
<li>Después del mes de  promoción</li>
<li>Disfruta Mérida</li>
</ul>
<asp:Button ID="Button1" runat="server" Text="Pidela ya" OnClick="btn6meses_Click" CssClass="but2" />
</div>
</div>
<div class="col-lg-4 col-md-3 col-sm-6">
<div class="plan blue">
<h3>Alto<span><i>$</i><strong>300</strong>.00</span> </h3>
<ul>
<li>Durante 6 meses</li>
<li>Después del mes de  promoción</li>
<li>Disfruta Mérida</li>
</ul>
 <asp:Button ID="btn6meses" runat="server" Text="Pidela ya" OnClick="btn6meses_Click" CssClass="but3" />
   
</div>
</div>

</div>
</div>
 
</div>
</section>--%>


    <div class="main">
        <h1>Vuelvete socio DM</h1>
        <div class="main-row">
            <!-- pricing-table-one -->
            <div class="pricing-grid agileits-shadow">
                <div class="w3ls-main">
                    <div id="cube" class="show-front">
                        <figure class="top"></figure>
                    </div>
                </div>
                <div class="agileinfo-price ">
                    <h3>promoción</h3>
                    <h5>Publica tu negocio gratis por 1 mes</h5>
                </div>
                <div class="price-bg">
                    <p class="price-label-1">$<span>0</span>Primer mes</p>
                    <ul class="count">
                        <li>Soporte técnico</li>
                        <li>Anuncio en la Aplicación movil</li>
                        <li>Gestión personalizada de tu negocio</li>
                    </ul>
                    <div class="buy">
                        <asp:LinkButton ID="LinkButton4" class="popup-with-zoom-anim" data-toggle="modal" data-target="#LogUP" runat="server">adquierelo ya</asp:LinkButton>
                        
                    </div>
                </div>
            </div>
            <!-- pricing-table-two -->
            <div class="pricing-grid agileits-shadow">
                <div class="w3ls-main">
                    <div id="cube2" class="show-front">
                        <figure class="top top-two"></figure>
                    </div>
                </div>
                <div class="agileinfo-price two">
                    <h3>Básico</h3>
                    <h5>Publica tu negocio por 1 meses</h5>
                </div>
                <div class="price-bg">
                    <p class="price-label-2">$<span>100</span>/Mes</p>
                    <ul class="count">
                        <li>Soporte técnico</li>
                        <li>Anuncio en la Aplicación movil</li>
                        <li>Gestión personalizada de tu negocio</li>
                    </ul>
                    <div class="buy buy-two">
                        <a class="popup-with-zoom-anim" data-toggle="modal" data-target="#LogUP">adquierelo ya</a>
                    </div>
                </div>
            </div>
            <!-- pricing-table-three -->
            <div class="pricing-grid agileits-shadow">
                <div class="w3ls-main">
                    <div id="cube3" class="show-front">
                        <figure class="top top-three"></figure>
                    </div>
                </div>
                <div class="agileinfo-price three">
                    <h3>Premium</h3>
                    <h5>publica tu negocio por 12 meses</h5>
                </div>
                <div class="price-bg">
                    <p class="price-label-3">$<span>400</span>/12Meses</p>
                    <ul class="count">
                        <li>Soporte técnico</li>
                        <li>Anuncio en la Aplicación movil</li>
                        <li>Gestión personalizada de tu negocio</li>
                    </ul>
                    <div class="buy buy-three">
                        <asp:LinkButton class="popup-with-zoom-anim" ID="LinkButton1" data-toggle="modal" data-target="#LogUP" runat="server">adquierelo ya</asp:LinkButton>
                        <%--<a href="#small-dialog"></a> --%>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <%--<!-- pop-up-grid -->
		 <div id="small-dialog" class="mfp-hide">
			<div class="pop_up">
				<div class="payment-online-form-left">
					<div action="#" method="post"> 
						<h4>Registrate</h4>
						<ul>
							<li><input class="text-box-dark" placeholder="Primer nombre" type="text" required/></li>
							<li><input class="text-box-dark" placeholder="Segundo nombre" type="text" required/></li>
						</ul>
						<ul>
							<li><input class="text-box-dark" placeholder="Email" type="text" required/></li>
							<li><input class="text-box-dark" placeholder="Nombre del establecimiento" type="text" required/></li>
						</ul>
						<ul>
							<li><input class="text-box-dark" placeholder="Numero de telefono" type="text" required/></li>
							<li><input class="text-box-dark" placeholder="dirección" type="text" required/></li>
						</ul>	 
						<div class="clear"> </div>
						<ul class="payment-type">
							<h4>Formas de pago</h4> 
							<li><span class="col_checkbox">
								<input type="radio" name="payment-method" id="paypal" value="paypal"/> 
								<a class="visa" href="#"> </a>
								</span>												
							</li>
							<li>
								<span class="col_checkbox">
									<input type="radio" name="payment-method" id="card" value="card" checked=""/>
									<a class="paypal" href="#"> </a>
								</span>
							</li>  
						</ul>
						<div class="clear"> </div>
						<ul>
							<li><input class="text-box-dark" placeholder="Número de tarjeta" type="text" required//></li>
							<li><input class="text-box-dark" placeholder="Nombre de la tarjeta" type="text" required//></li>
						</ul>
						<ul>
							<li><input class="text-box-light hasDatepicker" placeholder="Fecha de expiración" type="text" required//></li>
							<li><input class="text-box-dark" placeholder="Código de  seguridad" type="text" required//></li>
						</ul> 
						<ul class="payment-sendbtns">
							<li><input type="reset" value="Borrar"/></li>
                             <asp:Button ID="btn6meses" runat="server" Text="Enviar" OnClick="btn6meses_Click" CssClass="but3" />
						</ul>
						<div class="clear"> </div>
					</div>
				</div>
			</div>
		</div>
		<!-- //pop-up-grid -->--%>
    </div>
  
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
       <div class="agileits-shadow">
           <div class="w3ls-main">
                    <div id="cubemodal" class="show-front">
                        <figure class="top"></figure>
                    </div>
                </div>
  
    <div class="modal-content">
       <div class="agileinfo-price ">
    <%--  <div class="modal-header">--%>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <div class="agileinfo-price "> 
          <h3 id="myModalLabel">CREA TU CUENTA</h3>
          <h5>Membresia por promoción al inscribirte un mes gratis</h5>
              </div>
             </div>
     <%--</div>--%>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
            <div class="buy">
       <asp:LinkButton class="popup-with-zoom-anim" ID="LinkButton3" runat="server">adquierelo ya</asp:LinkButton>
        </div>
      </div>
  
     </div>
  </div>
</div>
</div>
   
    
    
     <div class="divide40"></div>




    <%--<script>
        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        });
    </script>--%>







    <script src="../js/theme-core.js"></script>
    <script src="../js/jquery.min.js"></script>
    <script src="../js/jquery.magnific-popup.min.js"></script>

    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>

    <script src="../js/modernizr.custom.53451.js"></script>
</asp:Content>
