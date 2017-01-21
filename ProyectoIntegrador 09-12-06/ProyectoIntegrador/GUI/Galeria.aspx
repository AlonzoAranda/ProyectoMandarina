
<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPageFrontEnd.Master" AutoEventWireup="true" CodeBehind="Galeria.aspx.cs" Inherits="ProyectoIntegrador.GUI.Galeria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="scripHeader" runat="server">
    <link href="../css/lightbox.css" rel="stylesheet" />
     <script src="../js/jquery-1.11.0.min.js"></script>
    
<!-- Custom Theme files -->
    <link href="../css/style.css" rel="stylesheet" />


<%--
    <script src="../js/jquery.min.js"></script>--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="banner">
		
	</div>
   <div class="divide30"></div>

    <div class="gallery">
			<div class="container">
				<div class="gallery-info wow fadeInDown animated" data-wow-delay=".5s">
					<h1>Lugares destacados en Mérida</h1>
				</div>
				
				<div class="gallery-grids">
					<div class="col-md-6 gallery-grid wow fadeInUp animated" data-wow-delay=".5s">
						<div class="grid">
							<figure class="effect-layla">
								<a class="example-image-link" href="../img/g1.jpg" data-lightbox="example-set" data-title="El palacio de gobierno da lugar a hermosas exposiciones de arte en Mérida Yucatán.">
									<img src="../img/g1.jpg" alt="" />
									<figcaption>
										<h3>Palacio de gobierno</h3>
										<p>El palacio de gobierno da lugar a hermosas exposiciones de arte en Mérida Yucatán</p>
									</figcaption>	
								</a>
							</figure>
						</div>
					</div>
					<div class="col-md-6 gallery-grid wow fadeInUp animated" data-wow-delay=".5s">
						<div class="grid">
							<figure class="effect-layla">
								<a class="example-image-link" href="../img/g2.jpg" data-lightbox="example-set" data-title="Al costado del palacio de gobierno podemos encontrar lugares para disfrutar de una buena comida, helado , etc.">
									<img src="../img/g2.jpg" alt="" />
									<figcaption>
										<h3>Diversos locales</h3>
										<p>Al costado del palacio de gobierno podemos encontrar lugares para disfrutar de una buena comida, helado , etc</p>
									</figcaption>	
								</a>
							</figure>
						</div>
					</div>
					<div class="col-md-6 gallery-grid wow fadeInUp animated" data-wow-delay=".5s">
						<div class="grid">
							<figure class="effect-layla">
								<a class="example-image-link" href="../img/g3.jpg" data-lightbox="example-set" data-title="Las calesas o calandrias son una especie de carruajes tirados por caballos, que en la Mérida de finales del siglo XVIII y principios del XIX eran el principal medio de transporte en Mérida para las familias ricas o de la nobleza; también fueron ampliamente utilizadas como vehículos de carga. Posteriormente su uso se fue generalizando; es un medio de transporte tan práctico que en las aledañas Motul e Izamal la gente aún las utiliza cotidianamente como medio de transporte urbano.">
									<img src="../img/g3.jpg" alt="" />
									<figcaption>
										<h3>Las calandrinas</h3>
										<p>No te puedes perder de un paseo en las calandrinas</p>
									</figcaption>		
								</a>
							</figure>
						</div>
					</div>
					<div class="col-md-6 gallery-grid wow fadeInUp animated" data-wow-delay=".5s">
						<div class="grid">
							<figure class="effect-layla">
								<a class="example-image-link" href="../img/g4.jpg" data-lightbox="example-set" data-title="La Catedral de Yucatán, en la ciudad de Mérida, capital del estado, dedicada a San Ildefonso, es la sede de la arquidiócesis de Yucatán y la primera catedral levantada en la América continental (tierra firme), y también la más antigua de México. Sólo la Catedral de Santo Domingo, en toda la América, es más antigua que la de Yucatán.">
                                    <img src="../img/Cate.png"  alt=""  />
                      
									<figcaption>
										<h3>Catedral</h3>
										<p>La Catedral de Yucatán, en la ciudad de Mérida.</p>
									</figcaption>	
								</a>
							</figure>
						</div>
					</div>
					<div class="col-md-6 gallery-grid wow fadeInUp animated" data-wow-delay=".5s">
						<div class="grid">
							<figure class="effect-layla">
								<a class="example-image-link" href="../img/g5.jpg" data-lightbox="example-set" data-title="Por iniciativa de la liga de acción social, se levantó un monumento en homenaje a la madre, fundado el primero de febrero de 1909, en el parque Morelos, La estatua, es una reproducción en mármol de la que posee la Ciudad de París, obra de André Lenoir.">
									<img src="../img/g5.jpg" alt="" />
									<figcaption>
										<h3>Parque de la madre</h3>
										<p>visita este parque, así como los restaurantes de sus costados.</p>
									</figcaption>	
								</a>
							</figure>
						</div>
					</div>
					<div class="col-md-6 gallery-grid wow fadeInUp animated" data-wow-delay=".5s">
						<div class="grid">
							<figure class="effect-layla">
								<a class="example-image-link" href="../img/g6.jpg" data-lightbox="example-set" data-title="Los arcos de la ciudad de Mérida, fueron construidos alrededor del año de 1690, bajo el Gobierno del General Juan José de la Bárcena.">
									<img src="../img/g6.jpg" alt="" />
									<figcaption>
										<h3>Los arcos</h3>
										<p>Cuenta con pequeñas tiendas donde podras comprar curiosidades</p>
									</figcaption>		
								</a>
							</figure>
						</div>
					</div>
					<div class="clearfix"> </div>
                    <script src="../js/lightbox-plus-jquery.min.js"></script>
				</div>
			</div>
		</div>
</asp:Content>
