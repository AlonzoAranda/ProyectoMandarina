<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/FrontEnd/FrontMetheor.Master" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="ProyectoIntegrador.GUI.FrontEnd.Inicio_de_sesión" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    
    <section class="fw-section bg-white border-top padding-top-3x">
      <div class="container ">
        <div class="row">
          
          <div class="col-md-6 col-md-push-6">
              <br />
              <br />
           <div class=" row">
                  <h2>Iniciar Sesión</h2>
            <p></p>
                      <div class="col-sm-9">
            <div class="row">
              <div class="col-sm-6">
                <div class="form-element">
                  <i class="pe-7s-user"></i>
                    <asp:TextBox ID="txtUsuario" runat="server" class="form-control"  placeholder="Usuario" onfocus="this.Text = '';" onblur="if (this.Text == '') {this.Text = 'txtUsuario';}" required=""></asp:TextBox>
                  
                </div>
              </div>
              <div class="col-sm-6">
              <div class="form-element">
                <i class="fa fa-lock"></i>
                  <asp:TextBox ID="txtContrasena"  class="form-control " runat="server"  placeholder="Contraseña"  TextMode="Password" onfocus="this.Text = '';" onblur="if (this.Text == '') {this.Text = 'txtContrasena';}" required=""  ></asp:TextBox>
               
              </div>
              </div>
            </div>
          </div><!-- .col-sm-9 -->
          <div class="col-sm-3">
            <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
            <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_c7103e2c981361a6639545bd5_1194bb7544" tabindex="-1" value=""></div>
              <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary btn-block" OnClick="LinkButton1_Click">Conectarse</asp:LinkButton>
              
          </div><!-- .col-sm-3 -->
          <div class="col-sm-12">
            <span class="text-muted"></span>
          </div><!-- .col-sm-12 -->
           </div>
              <br />
              <br />
            <div class ="row">

            <div class="device-gallery-thumbs">
        

                <ul class="thumb-list">
                <li class="thumb">
                  <a href="#scr01" data-toggle="tab">
    <img src="../../img/home/intro/screen01.jpg" />

                  </a>
                </li>
                <li class="thumb active">
                  <a href="#scr02" data-toggle="tab">
<img src="../../img/home/intro/screen02.jpg" />
                  </a>
                </li>
                <li class="thumb">
                  <a href="#scr03" data-toggle="tab">
<img src="../../img/home/intro/screen05.jpg" />
                  </a>
                </li>
                <li class="thumb">
                  <a href="#scr04" data-toggle="tab">
        <img src="../../img/home/intro/screen03.jpg" />
                  </a>
                </li>
                <li class="thumb">
                  <a href="#scr05" data-toggle="tab">
                    <img src="../../img/home/intro/screen01.jpg" />
                  </a>
                </li>
              </ul>
                
              <div >
          

                  
        </div>
            </div>
            </div>

            <!-- .device-gallery-thumbs -->
         
          </div><!-- .col-sm-6.col-md-push-6 -->
          <div class="col-md-6 col-md-pull-6">
            <div class="space-top-2x visible-sm visible-xs"></div>
            <div class="device-gallery-device">
              <img src="../../img/device-gallery/device.png" alt="Device"/>
              <div class="tab-content">
                <div class="tab-pane transition fade scale" id="scr01">
                  <img src="../../img/home/intro/screen01.jpg" /> 
                </div>
                <div class="tab-pane transition fade scale in active" id="scr02">
                 <img src="../../img/home/intro/screen01.jpg" /> 
                </div>
                <div class="tab-pane transition fade scale" id="scr03">
                  <img src="../../img/device-gallery/screen03.jpg" alt="Screen 3"/>
                </div>
                <div class="tab-pane transition fade scale" id="scr04">
                  <img src="../../img/device-gallery/screen04.jpg" alt="Screen 4"/>
                </div>
                <div class="tab-pane transition fade scale" id="scr05">
                  <img src="../../img/device-gallery/screen05.jpg" alt="Screen 5"/>
                </div>
              </div><!-- .tab-content -->
            </div><!-- .device-gallery-device -->
          </div><!-- .col-md-6.col-md-pull-6 -->
            </div>
        </div><!-- .row -->
    <!-- .container -->
    </section>












    
</asp:Content>
