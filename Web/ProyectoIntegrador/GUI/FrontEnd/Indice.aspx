<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/FrontEnd/FrontMetheor.Master" AutoEventWireup="true" CodeBehind="Indice.aspx.cs" Inherits="ProyectoIntegrador.GUI.FrontEnd.Indice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!-- .navbar.navbar-fixed -->

    <!-- Intro Section -->
    <section class="intro-section" style="background-image: url(../../img/home/intro/intro-bg01.jpg);" data-stellar-background-ratio="0.65">
      <span class="overlay" style="opacity: .85;"></span>
      <div class="container text-center">
        <div class="intro-logo space-bottom">
          <img src="../../img/home/intro/logo.png" alt="Metheor">
        </div><!-- .intro-logo -->
        <p class="text-light opacity-50">Spread the word about Metheor</p>
        <ul class="sharing-links light-skin space-bottom">
          <li><a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i>6 358</a></li>
          <li><a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i>8 242</a></li>
          <li><a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="fa fa-instagram"></i>5 176</a></li>
        </ul><!-- .sharing-links -->
      </div><!-- .container -->

      <!-- Remove class ".layer-parallax" to disable mouse parallax effect on screens. -->
      <div class="intro-phone-wrap layer-parallax">
        <div class="phone layer" data-depth="0.25">
          <img src="../../img/home/intro/phone.png" alt="Phone">
          <div class="screen">
            <img src="../../img/home/intro/screen01.jpg" alt="Screen 1">
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
        <h6 class="text-thin">Application available on:</h6>
        <a href="#" class="app-store-btn"></a>
        <a href="#" class="google-play-btn"></a>
        <a href="#" class="windows-btn"></a>
        <a href="#" class="amazon-btn"></a>
        <div class="market-counter">
          <i class="pe-7s-download"></i>
          <span>133K</span>
          downloads
        </div><!-- .market-counter -->
      </div><!-- .container -->
    </section><!-- .fw-section.bg-white -->

    <!-- Features -->
    <section class="fw-section bg-white border-top padding-top-3x padding-bottom-3x">
      <div class="container">
        <h2 class="block-title text-center">Awesome Features
          <small>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</small>
        </h2>
        <div class="row">
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-icon text-center">
              <div class="box-with-icon-icon">
                <i class="pe-7s-cloud-upload"></i>
              </div>
              <h3 class="box-with-icon-title">Backup Files in Cloud</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div><!-- .box-with-icon -->
          </div><!-- .col-sm-4 -->
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-icon text-center">
              <div class="box-with-icon-icon">
                <i class="pe-7s-micro"></i>
              </div>
              <h3 class="box-with-icon-title">Voice Recording Support</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div><!-- .box-with-icon -->
          </div><!-- .col-sm-4 -->
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-icon text-center">
              <div class="box-with-icon-icon">
                <i class="pe-7s-config"></i>
              </div>
              <h3 class="box-with-icon-title">Advanced Settings</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div><!-- .box-with-icon -->
          </div><!-- .col-sm-4 -->
        </div><!-- .row -->
        <div class="row">
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-icon text-center">
              <div class="box-with-icon-icon">
                <i class="pe-7s-credit"></i>
              </div>
              <h3 class="box-with-icon-title">Easy In App Payments</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div><!-- .box-with-icon -->
          </div><!-- .col-sm-4 -->
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-icon text-center">
              <div class="box-with-icon-icon">
                <i class="pe-7s-comment"></i>
              </div>
              <h3 class="box-with-icon-title">Chat In Your App</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div><!-- .box-with-icon -->
          </div><!-- .col-sm-4 -->
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-icon text-center">
              <div class="box-with-icon-icon">
                <i class="pe-7s-date"></i>
              </div>
              <h3 class="box-with-icon-title">Events Calendar</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            </div><!-- .box-with-icon -->
          </div><!-- .col-sm-4 -->
        </div><!-- .row -->
      </div><!-- .container -->
    </section>

    <!-- Video Popup -->
    <section class="fw-section parallax text-center padding-top-3x padding-bottom-3x" style="background-image: url(../../img/home/video-bg.jpg);" data-stellar-background-ratio="0.65">
      <span class="overlay" style="opacity: .78;"></span>
      <div class="container padding-top-3x padding-bottom-3x">
        <!-- Remove ".light-skin" class to alter appearance. -->
        <a href="https://vimeo.com/33984473" class="video-popup-btn light-skin space-top-3x space-bottom">
          <i class="pe-7s-film"></i>
        </a>
        <p class="text-lg text-light space-bottom-2x">Watch app intro video</p>
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
      <h2 class="block-title text-center">What people say</h2>
      <div class="testimonials-carousel" data-loop="true">
        <div class="inner">
          <div class="testimonial">
            <div class="testimonial-author-ava">
              <img src="../../img/testimonials/01.jpg" alt="Jessie Pinkman"/>
            </div>
            <h3 class="testimonial-author-name">Jessie Pinkman</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
            <img src="../../img/testimonials/logo01.png" alt="MailChimp"/>
          </div><!-- .testimonial -->
          <div class="testimonial">
            <div class="testimonial-author-ava">
              <img src="../../img/testimonials/02.jpg" alt="Lara Goodwill"/>
            </div>
            <h3 class="testimonial-author-name">Lara Goodwill</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
            <img src="../../img/testimonials/logo02.png" alt="WordPress"/>
          </div><!-- .testimonial -->
          <div class="testimonial">
            <div class="testimonial-author-ava">
              <img src="../../img/testimonials/03.jpg" alt="Mike Johnson"/>
            </div>
            <h3 class="testimonial-author-name">Mike Johnson</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.</p>
            <img src="../../img/testimonials/logo03.png" alt="Bootstrap"/>
          </div><!-- .testimonial -->
        </div><!-- .inner -->
      </div><!-- .testimonials-carousel -->
    </section><!-- .container.padding-bottom-3x -->

    <!-- Split Section (Gallery) -->
    <section class="split-section split-gallery">
      <div class="tab-content">
        <div class="tab-pane transition fade scaledown in active" id="img1" style="background-image: url(../../img/home/gallery/01.jpg)"></div>
        <div class="tab-pane transition fade scaledown" id="img2" style="background-image: url(../../img/home/gallery/02.jpg)"></div>
        <div class="tab-pane transition fade scaledown" id="img3" style="background-image: url(../../img/home/gallery/03.jpg)"></div>
      </div><!-- .tab-content -->
      <div class="content">

        <!-- Filters Bar -->
        <nav class="filters-bar space-bottom-2x">
          <div class="column">
            <div class="custom-controls">
              <a href="#" class="prev-btn"><i class="pe-7s-angle-left"></i></a>
              <ul class="bullets">
                <li class="active"><a href="#img1" data-toggle="tab"></a></li>
                <li><a href="#img2" data-toggle="tab"></a></li>
                <li><a href="#img3" data-toggle="tab"></a></li>
              </ul><!-- .nav-tabs -->
              <a href="#" class="next-btn"><i class="pe-7s-angle-right"></i></a>
            </div>
          </div><!-- .column -->
          <div class="column">
            <ul class="nav-filters">
              <li>
                <a href="gallery.html">
                  <i class="pe-7s-keypad"></i>
                  View Gallery
                </a>
              </li>
            </ul><!-- .nav-filters -->
          </div><!-- .column -->
        </nav><!-- .filters-bar -->
        <h3>Our success. Some figures.</h3>
        <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur.</p>

        <ul class="counters">
          <li>
            <i class="pe-7s-download"></i>
            <h3>133K</h3>
            <span>Downloads</span>
          </li>
          <li>
            <i class="pe-7s-add-user"></i>
            <h3>52K</h3>
            <span>New Users Montly</span>
          </li>
          <li>
            <i class="pe-7s-star"></i>
            <h3>4.89</h3>
            <span>Avarage Rating</span>
          </li>
        </ul><!-- .counters -->
      </div><!-- .content -->
    </section><!-- .split-section -->

    <!-- Team -->
    <section class="fw-section bg-white padding-top-3x padding-bottom-3x">
      <div class="container">
        <h2 class="block-title text-center">
          Our brilliant team
          <small>Smart people. Genius ideas. Prominent result.</small>
        </h2>
        <div class="row">
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-image text-center">
              <div class="box-with-image-image">
                <img src="../../img/team/01.jpg" alt="Johnathan Doe">
              </div>
              <h3 class="box-with-image-title">Johnathan Doe
                <small>CEO, Co-Founder</small>
              </h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
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
              <h3 class="box-with-image-title">Anabelle Dorris
                <small>Lead Designer</small>
              </h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
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
              <h3 class="box-with-image-title">Taylor White
                <small>UX / UI Engeneer</small>
              </h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
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
        </div><!-- .row -->

        <div class="row">
          <div class="col-sm-4">
            <!-- Use ".light-skin" class to alter appearance. -->
            <div class="box-with-image text-center">
              <div class="box-with-image-image">
                <img src="../../img/team/04.jpg" alt="Suasanna Davis">
              </div>
              <h3 class="box-with-image-title">Suasanna Davis
                <small>Marketing Director</small>
              </h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
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
                <img src="../../img/team/05.jpg" alt="Christopher Walker">
              </div>
              <h3 class="box-with-image-title">Christopher Walker
                <small>Lead Programmer</small>
              </h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
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
                <img src="../../img/team/06.jpg" alt="Endy Garcia">
              </div>
              <h3 class="box-with-image-title">Endy Garcia
                <small>Java Developer</small>
              </h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
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
        </div><!-- .row -->
      </div><!-- .container -->
    </section><!-- .fw-section.bg-white -->

    <!-- Pricing -->
    <section class="pricing-table-container space-bottom-3x">
      <div class="pricing-header" style="background-image: url(../../img/home/pricing-bg.jpg);" data-stellar-background-ratio="0.65">
        <div class="overlay"></div>
      </div><!-- .pricing-header -->
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
        </div><!-- .pricing-table -->
      </div><!-- .container -->
    </section><!-- .pricing-table-container.space-bottom-3x -->

    <!-- Contacts -->
    <section class="container">
      <h2 class="text-center space-bottom-2x">Contact us for more details</h2>
      <div class="row">
        <div class="col-lg-10 col-lg-offset-1">
          <div class="row">
            <div class="col-sm-4">
              <div class="tile tile-with-icon">
                <div class="tile-body">
                  <i class="pe-7s-map-marker"></i>
                  <h4>Address</h4>
                  <p>45 Park Avenue, Apt. 303 New York, NY 10016, USA</p>
                </div>
              </div><!-- .tile.tile-with-icon -->
            </div><!-- .col-sm-4 -->
            <div class="col-sm-4">
              <div class="tile tile-with-icon">
                <div class="tile-body">
                  <i class="pe-7s-call"></i>
                  <h4>Phone</h4>
                  <p>001 (917) 555-4836</p>
                  <br>
                </div>
              </div><!-- .tile.tile-with-icon -->
            </div><!-- .col-sm-4 -->
            <div class="col-sm-4">
              <div class="tile tile-with-icon">
                <div class="tile-body">
                  <i class="pe-7s-mail"></i>
                  <h4>Email</h4>
                  <p><a href="mailto:new_york@mail">new_york@mail.com</a><br><br></p>
                </div>
              </div><!-- .tile.tile-with-icon -->
            </div><!-- .col-sm-4 -->
          </div><!-- .row -->
        </div><!-- .col-lg-10.col-lg-offset-1 -->
      </div><!-- .row -->
    </section><!-- .container -->
</asp:Content>
