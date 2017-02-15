<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/FrontEnd/FrontMetheor.Master" AutoEventWireup="true" CodeBehind="Indice.aspx.cs" Inherits="ProyectoIntegrador.GUI.FrontEnd.Indice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- .navbar.navbar-fixed -->

    <!-- Intro Section -->
    <section class="intro-section" style="background-image: url(../../img/home/intro/bakku01.jpg);" data-stellar-background-ratio="0.65">
      <span class="overlay" style="opacity: .85;"></span>
      <div class="container text-center">
        <div class="intro-logo space-bottom">
          <img src="../../img/home/intro/logoXimbal.png" alt="Metheor">
        </div><!-- .intro-logo -->
        <p class="text-light opacity-50">Conoce el camino.</p>
        <ul class="sharing-links light-skin space-bottom">
          <li><a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i>0</a></li>
          <li><a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i>1</a></li>
          <li><a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="fa fa-instagram"></i>0</a></li>
        </ul><!-- .sharing-links -->
      </div><!-- .container -->

      <!-- Remove class ".layer-parallax" to disable mouse parallax effect on screens. -->
      <div class="intro-phone-wrap layer-parallax">
        <div class="phone layer" data-depth="0.25">
          <img src="../../img/home/intro/phone.png" alt="Phone">
          <div class="screen">
            <img src="../../img/home/intro/screen01.jpg" alt="Screen 1"/>
          </div>
        </div><!-- .phone -->
        <div class="screen-first-right layer" data-depth="0.15">
          <img src="../../img/home/intro/screen02.jpg" alt="Screen 2">
        </div><!-- .screen-first-right -->
        <div class="screen-first-left layer" data-depth="0.15">
          <img src="../../img/home/intro/screen03.jpg" alt="Screen 3">
        </div><!-- .screen-first-left -->
        <div class="screen-second-right layer" data-depth="0.05">
          <img src="../../img/home/intro/screen04.jpg" alt="Screen 4">
        </div><!-- .screen-second-right -->
        <div class="screen-second-left layer" data-depth="0.05">
          <img src="../../img/home/intro/screen05.jpg" alt="Screen 5">
        </div><!-- .screen-second-left -->
      </div><!-- .intro-phone-wrap -->
      <span class="inner-shadow"></span>
    </section><!-- .intro-section -->

    <!-- Market Buttons -->
    <section class="fw-section bg-white padding-top-3x padding-bottom-3x" id="markets">
      <div class="container text-center">
        <h6 class="text-thin">Aplicación disponible en:</h6>
        <a href="#" class="app-store-btn"></a>
        <a href="#" class="google-play-btn"></a>
        <a href="#" class="windows-btn"></a>
        <a href="#" class="amazon-btn"></a>
        <div class="market-counter">
          <i class="pe-7s-download"></i>
          <span>155</span>
          descargas
        </div><!-- .market-counter -->
      </div><!-- .container -->
    </section><!-- .fw-section.bg-white -->

    <!-- Features -->
    <section class="fw-section bg-white border-top padding-top-3x padding-bottom-3x">
      <div class="container">
        <h2 class="block-title text-center">Características Impresionantes
          <small> </small>
        </h2>
        
        <div class="row">
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-icon text-center">
              <div class="box-with-icon-icon">
                <i class="pe-7s-comment"></i>
              </div>
              <h3 class="box-with-icon-title">Asistente Personal</h3>
              <p>Será guiado a través de la aplicación con la ayuda de un asistente virtual.</p>
            </div><!-- .box-with-icon -->
          </div><!-- .col-sm-4 -->
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-icon text-center">
              <div class="box-with-icon-icon">
                <i class="pe-7s-date"></i>
              </div>
              <h3 class="box-with-icon-title">Calendario de Eventos</h3>
              <p>Podrás saber si se realizarán eventos en fechas próximas.</p>
            </div><!-- .box-with-icon -->
          </div><!-- .col-sm-4 -->
            <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-icon text-center">
              <div class="box-with-icon-icon">
                <i class="pe-7s-config"></i>
              </div>
              <h3 class="box-with-icon-title">Configuraciones personalizadas</h3>
              <p>Podrá configurar las opciones de la aplicación a su preferencia.</p>
            </div><!-- .box-with-icon -->
          </div>
        </div><!-- .row -->
      </div><!-- .container -->
    </section>

    <!-- Video Popup -->
    <section class="fw-section parallax text-center padding-top-3x padding-bottom-3x" style="background-image: url(../../img/home/video-bg.jpg);" data-stellar-background-ratio="0.65">
      <span class="overlay" style="opacity: .78;"></span>
      <div class="container padding-top-3x padding-bottom-3x">
        <!-- Remove ".light-skin" class to alter appearance. -->
        <a href="https://www.youtube.com/watch?v=j_5s7vFBBfY" class="video-popup-btn light-skin space-top-3x space-bottom">
          <i class="pe-7s-film"></i>
        </a>
        <p class="text-lg text-light space-bottom-2x">Ver video de introducción a la aplicación</p>
      </div><!-- .container -->
    </section><!-- .fw-section -->

    <!-- Testimonials Carousel -->
    <!-- Data API:
      data-loop="true/false" enable/disable looping
      data-autoplay="true/false" enable/disable carousel autoplay
      data-interval="3000" autoplay interval timeout in miliseconds
      Simply add necessary data attribute to the ".testimonials-carousel" with appropriate value to adjust carousel functionality.
     -->
    <section class="container padding-top-3x padding-bottom-3x">
      <h2 class="block-title text-center">Comentarios</h2>
      <div class="testimonials-carousel" data-loop="true">
        <div class="inner">
          <div class="testimonial">
            <div class="testimonial-author-ava">
              <img src="../../img/testimonials/01.jpg" alt="Jessie Pinkman"/>
            </div>
            <h3 class="testimonial-author-name">Samuel Corona</h3>
            <p>Excelente aplicación, el listado de sitios por visitar está bastante completo.</p>
            <!--<img src="../../img/testimonials/logo01.png" alt="MailChimp"/>-->
          </div><!-- .testimonial -->
          <div class="testimonial">
            <div class="testimonial-author-ava">
              <img src="../../img/testimonials/02.jpg" alt="Lara Goodwill"/>
            </div>
            <h3 class="testimonial-author-name">Armando Cruz</h3>
            <p>Fue la primera vez que salí de Taumaulipas y mi experiencia en Mérida fue excelente gracias a esta aplicación, altamente recomendable para aquellos que como yo, gustan de la cultura de otros estados.</p>
          </div>
                <!-- .testimonial -->
          <div class="testimonial">
            <div class="testimonial-author-ava">
              <img src="../../img/testimonials/03.jpg" alt="Miike Johnson"/>
            </div>
            <h3 class="testimonial-author-name">Jonathan Cuamatzi</h3>
            <p>Muy buena aplicación, ya la he recomendado a todos mis amigos.</p>
          </div><!-- .testimonial -->
        </div><!-- .inner -->
      </div><!-- .testimonials-carousel -->
    </section><!-- .container.padding-bottom-3x -->




    <section class="fw-section parallax text-center padding-top-3x padding-bottom-3x" style="background-image: url(../../img/home/video-bg.jpg);" data-stellar-background-ratio="0.65">
      <div class="pricing-header" style="background-image: url(../../img/home/pricing-bg.jpg);" data-stellar-background-ratio="0.65">

      <span class="overlay" style="opacity: .78;"></span>
          </div>
        <div class="container space-bottom">
        <div class="pricing-table">
          <h2 class="block-title text-center text-light">Nuestro equipo
            <small>Gente inteligente. Ideas geniales. Resultados sobresalientes</small>
          </h2>
            </div>
          <div>


              <div class="row">
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-image text-center">
              <div class="box-with-image-image">
                <img src="../../img/team/01.jpg" alt="Johnathan Doe">
              </div>
              <h3 class="box-with-image-title">Joseph Alonzo
                <small>CEO, Fundador</small>
              </h3>
              <!--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>-->
              <div class="social-bar text-center">
                <a href="#" class="sb-facebook" data-toggle="tooltip" data-placement="top" title="Facebook">
                  <i class="fa fa-facebook"></i>
                </a>
                <a href="#" class="sb-twitter" data-toggle="tooltip" data-placement="top" title="Twitter">
                  <i class="fa fa-twitter"></i>
                </a>
                <a href="#" class="sb-google-plus" data-toggle="tooltip" data-placement="top" title="Google+">
                  <i class="fa fa-google-plus"></i>
                </a>
              </div>
            </div><!-- .box-with-image -->
          </div><!-- .col-sm-4 -->
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-image text-center">
              <div class="box-with-image-image">
                <img src="../../img/team/02.jpg" alt="Anabelle Dorris">
              </div>
              <h3 class="box-with-image-title">Susana Ku
                <small>Analísta de Sistemas</small>
              </h3>
              <!--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>-->
              <div class="social-bar text-center">
                <a href="#" class="sb-facebook" data-toggle="tooltip" data-placement="top" title="Facebook">
                  <i class="fa fa-facebook"></i>
                </a>
                <a href="#" class="sb-google-plus" data-toggle="tooltip" data-placement="top" title="Google+">
                  <i class="fa fa-google-plus"></i>
                </a>
                <a href="#" class="sb-instagram" data-toggle="tooltip" data-placement="top" title="Instagram">
                  <i class="fa fa-instagram"></i>
                </a>
              </div>
            </div><!-- .box-with-image -->
          </div><!-- .col-sm-4 -->
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-image text-center">
              <div class="box-with-image-image">
                <img src="../../img/team/03.jpg" alt="Taylor White"/>
              </div>
              <h3 class="box-with-image-title">Ariel Keb
                <small>Diseñador encargado</small>
              </h3>
              <!--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>-->
              <div class="social-bar text-center">
                <a href="#" class="sb-facebook" data-toggle="tooltip" data-placement="top" title="Facebook">
                  <i class="fa fa-facebook"></i>
                </a>
                <a href="#" class="sb-twitter" data-toggle="tooltip" data-placement="top" title="Twitter">
                  <i class="fa fa-twitter"></i>
                </a>
                <a href="#" class="sb-google-plus" data-toggle="tooltip" data-placement="top" title="Google+">
                  <i class="fa fa-google-plus"></i>
                </a>
              </div>
            </div><!-- .box-with-image -->
          </div><!-- .col-sm-4 -->
        </div>


          </div>

          </div>
      
    </section>
        


    <!-- Team -->
    


    <!-- Pricing --
    <section class="pricing-table-container space-bottom-3x">
      <div class="pricing-header" style="background-image: url(../../img/home/pricing-bg.jpg);" data-stellar-background-ratio="0.65">
        <div class="overlay"></div>
      </div><!-- .pricing-header 
      <div class="container space-bottom">
        <div class="pricing-table">
          <h2 class="block-title text-center text-light">Pricing plans for cloud service
            <small>Sed ut perspiciatis unde omnis iste natus error sit voluptatem</small>
          </h2>
          <table>
            <thead>
              <tr>
                <td>&nbsp;</td>
                <td>
                  <h3 class="plan-name">
                    Starter
                    <span class="label label-primary">Free forever</span>
                  </h3>
                  <h4 class="plan-price">
                    <span class="currency">$</span>0<span> / mo</span>
                  </h4>
                </td>
                <td>
                  <h3 class="plan-name">Individual</h3>
                  <h4 class="plan-price">
                    <span class="currency">$</span>5<span> / mo</span>
                  </h4>
                </td>
                <td>
                  <h3 class="plan-name">Team</h3>
                  <h4 class="plan-price">
                    <span class="currency">$</span>15<span> / mo</span>
                  </h4>
                </td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>Max Number of Documents</td>
                <td><strong>5</strong></td>
                <td><strong>20</strong></td>
                <td><strong>50</strong></td>
              </tr>
              <tr>
                <td>Storage Space</td>
                <td>100 Mb</td>
                <td>500 Mb</td>
                <td>1 Gb</td>
              </tr>
              <tr>
                <td>Views Analytics</td>
                <td>No</td>
                <td>Yes</td>
                <td>Yes</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>
                  <a href="#" class="btn btn-ghost btn-primary btn-block">Sign Up</a>
                </td>
                <td>
                  <a href="#" class="btn btn-ghost btn-default btn-block">Sign Up</a>
                </td>
                <td>
                  <a href="#" class="btn btn-ghost btn-default btn-block">Sign Up</a>
                </td>
              </tr>
            </tbody>
          </table>
        </div><!-- .pricing-table 
      </div><!-- .container 
    </section><!-- .pricing-table-container.space-bottom-3x -->

    <!-- Contacts -->
    <section class="container">
        <h2 class="block-title text-center"></h2>
      <h2 class="text-center space-bottom-2x">Contáctanos</h2>
      <div class="row">
        <div class="col-lg-10 col-lg-offset-1">
          <div class="row">
            <div class="col-sm-4">
              <div class="tile tile-with-icon">
                <div class="tile-body">
                  <i class="pe-7s-map-marker"></i>
                  <h4>Dirección</h4>
                  <p>Calle 115 #404 x 50 Col. Santa Rosa</p>
                </div>
              </div><!-- .tile.tile-with-icon -->
            </div><!-- .col-sm-4 -->
            <div class="col-sm-4">
              <div class="tile tile-with-icon">
                <div class="tile-body">
                  <i class="pe-7s-call"></i>
                  <h4>Teléfono</h4>
                  <p>+52 (999) 3 70 99 73</p>
                  <br>
                </div>
              </div><!-- .tile.tile-with-icon -->
            </div><!-- .col-sm-4 -->
            <div class="col-sm-4">
              <div class="tile tile-with-icon">
                <div class="tile-body">
                  <i class="pe-7s-mail"></i>
                  <h4>Email</h4>
                  <p><a href="mailto:new_york@mail">MagnetValkyrion@gmail.com</a><br><br></p>
                </div>
              </div><!-- .tile.tile-with-icon -->
            </div><!-- .col-sm-4 -->
          </div><!-- .row -->
        </div><!-- .col-lg-10.col-lg-offset-1 -->
      </div><!-- .row -->
    </section><!-- .container -->
</asp:Content>
