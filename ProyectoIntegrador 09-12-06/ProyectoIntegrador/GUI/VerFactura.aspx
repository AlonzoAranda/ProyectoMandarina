<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="VerFactura.aspx.cs" Inherits="ProyectoIntegrador.GUI.VerFactura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="breadcrumb" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="titulo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class= "content-frame-body-left">
        
           
        <div class="divide80"></div>
              <div class="row">
                        <div class="panel-footer col-md-12">
                      
                            
                        
                            <div  class="form-horizontal">
                                   
                            <div class="panel panel-default">
                                <div class ="panel-body">
        <h1 class="text-center"><a href="index.aspx">Disfruta Mérida</a></h1>
        <div class="container invoice-outer">
            <div class="invoice-inner">
                <div class="row invoice-header">
                    <div class="col-sm-1 text-left"></div>
                    <div class="col-sm-4">
                        <h2></h2>
                    </div> 
                    
                    <div class="col-sm-5 text-right">
                        <h5>
                            <asp:Label ID="lblFecha" runat="server" Text="05/12/2016"></asp:Label></h5>
                        <span>Mérida Yucatán México</span>
                    </div>
                    <div class="col-sm-2 text-left"></div>
                </div><!--row invoice header end-->
                <hr>
                <div class="row">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="about-client">
                            <h4><strong>Información </strong>del cliente</h4>
                            <ul class="list-unstyled">
                                <li><strong>Nombre: </strong> <asp:Label ID="lblNombre" runat="server" Text=""></asp:Label></li>
                                 <br />
                                <li><strong>Apellidos: </strong><asp:Label ID="lblApellidos" runat="server" Text=""></asp:Label></li>
                                 <br />
                                <li><strong>Ciudad: </strong> Mérida Yucatán</li>
                                <br />
                                <br />
                               <%-- <li><strong>DOB:</strong> YYYY/MM/DD</li>--%>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="about-client">
                            <h4><strong>Detalles</strong> de Pago</h4>
                            <ul class="list-unstyled">
                                <li><strong>Tipo de pago: </strong><asp:Label ID="lblTipoPago" runat="server" Text="Tarjeta de credito"></asp:Label>  </li>
                                <br />
                                <li><strong>Membresia: </strong><asp:Label ID="lblMembresia" runat="server" Text="Free"></asp:Label> </li>
                                 <br />
                                <li><strong>Meses a pagar: </strong> <asp:Label ID="lblNumMeses" runat="server" Text="1"></asp:Label></li>
                                <br />
                                <br />
                                <%--<li><strong>DOB:</strong> YYYY/MM/DD</li>--%>
                            </ul>
                        </div>
                    </div>
                </div><!--about client row end-->
                <div class="divide40"></div>
                <div class="row">
                     <div class="col-sm-1 text-left"> </div>
                    <div class="col-sm-9">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title">Pago de<strong> factura</strong></h3>
                            </div>

                            <div class="panel-body">

                                <p>Factura sin valor legal</p>
                                <asp:GridView ID="dtgDetallePago" class="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="Clave">
                                    <Columns>
                                         <asp:BoundField DataField="Clave" HeaderText="CLAVE DE LA FACTURA" />
                                                <asp:BoundField  DataField="fecha" HeaderText="FECHA" />
                                              <asp:BoundField DataField="Membresia" HeaderText="TIPO DE MEMBRESIA" />
                                                <asp:BoundField DataField="Duracion" HeaderText="MESES DE DURACIÓN" />
                                                <asp:BoundField DataField="Costo" HeaderText="COSTO" />
                                                <asp:BoundField DataField="numeroSitios" HeaderText="NÚMERO DE SITIOS PERMITIDOS" />
                                    </Columns>
                                </asp:GridView>




                               

                            </div>

                        </div>
                    </div>
                     <div class="col-sm-2 text-left"> </div>
                </div><!--invoice item row end-->
                <div class="divide40"></div>
                <div class="row">
                    <div class="col-sm-1 text-left"> </div>
                    <div class="col-sm-4">
                        <h4><strong>Detalles de </strong>Contacto</h4>

                        <p class="nomargin nopadding">
                            <strong>Nota:</strong> 
                         Por dudas sobre el pago, puede comunicarse con soporte DM al +52(999)2278641 </p><br><!-- no P margin for printing - use <br> instead -->

                        <address>
                            Mérida Yucatán <br>
                            CP: 97196 Salvador alvarado<br>                
                            Email:supportDisfrutaMerida@Gmail.com
                        </address>

                    </div>
                    <div class="col-sm-5 text-right">

                        <ul class="list-unstyled">
                            <li><strong>Sub-Total:</strong> $<asp:Label ID="lblSubtotal" runat="server" Text="142.00"></asp:Label></li>
                           <br />
                             <li><strong>Descuento:</strong> $<asp:Label ID="lblDescuento" runat="server" Text="142.00"></asp:Label></li>
                           <br />
                             <li><strong>IVA (%16):</strong> $<asp:Label ID="lblIva" runat="server" Text="20.00"></asp:Label></li>
                           <br />
                             <li><strong>Total:</strong> $<asp:Label ID="lblTotal" runat="server" Text="162.00"></asp:Label></li>
                        </ul>
                        <div>
                            <%--<button class="btn btn-theme-bg btn-primary" onclick="window.print();"><i class="fa fa-print"></i> Imptimit</button>--%>            
                            <asp:LinkButton ID="btnRegresar" class="btn border-black  btn-primary" runat="server" OnClick="btnRegresar_Click">Regresar</asp:LinkButton>
                            <asp:LinkButton ID="btnImprimir" runat="server" class="btn border-primary border-black  fa fa-print" OnClick="btnImprimir_Click">Imprimir</asp:LinkButton>
       
                        </div>

                    </div>
                    <div class="col-sm-2 text-left">
                    </div>

                </div>
                <hr>
                <span class="copyright-info">&copy; Factura | impresa el 15/12/2016</span>
            
        </div><!--invoice outer-->
        </div>


        </div>
                            </div>
                            </div>
                            </div>
                            </div>

        <div class="divide80"></div>
             

       <!--scripts and plugins -->
        <!--must need plugin jquery-->
        <script src="js/jquery.min.js"></script>        
        <!--bootstrap js plugin-->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>       
        <!--easing plugin for smooth scroll-->
        <script src="js/jquery.easing.1.3.min.js" type="text/javascript"></script>
        <!--sticky header-->
        <script type="text/javascript" src="js/jquery.sticky.js"></script>
        <!--flex slider plugin-->
        <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
        <!--parallax background plugin-->
        <script src="js/jquery.stellar.min.js" type="text/javascript"></script>
        
        
        <!--digit countdown plugin-->
        <script src="js/waypoints.min.js"></script>
        <!--digit countdown plugin-->
        <script src="js/jquery.counterup.min.js" type="text/javascript"></script>
        <!--on scroll animation-->
        <script src="js/wow.min.js" type="text/javascript"></script> 
        <!--owl carousel slider-->
        <script src="js/owl.carousel.min.js" type="text/javascript"></script>
        <!--popup js-->
        <script src="js/jquery.magnific-popup.min.js" type="text/javascript"></script>
        <!--you tube player-->
        <script src="js/jquery.mb.YTPlayer.min.js" type="text/javascript"></script>
        
        
        <!--customizable plugin edit according to your needs-->
        <script src="js/custom.js" type="text/javascript"></script>

          
</asp:Content>
