<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="AgregarSitio2.aspx.cs" Inherits="ProyectoIntegrador.GUI.AgregarSitio2"  ValidateRequest="false"%>
<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="breadcrumb" runat="server">
        <li><a href="Index.aspx ">Principal</a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="titulo" runat="server">
    Agregar sitio
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../js/gmaps.js"></script>
    
    <div class="row">

                        <div class="panel-footer col-md-12">
                      

                              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        
                            <div  class="form-horizontal">
                                   
                            <div class="row">
                                <div class ="panel-body">
                                    
                                <div class="row" style="background-color: white">
                                <div class=" pull-right">
                              
                                    
                                     
                                   <asp:LinkButton ID="txtLimpiar" runat="server" class="btn btn-default " OnClick="txtLimpiar_Click"> 
                                        <span class="glyphicon glyphicon-refresh"></span>&nbsp;Limpiar</asp:LinkButton>
                                   
                                                     
                                    <div class ="col-xsm-2 btn-group espacio">
                                   <button id="btnGuardar" runat="server" type="submit" class="btn btn-primary" onserverclick="btnEnviar_Click" >
                                    <span aria-hidden="true"  class="fa fa-save">&nbsp;Agregar
                                    </span>
                                    </button>
                                    
                                    </div>
                                    
                                    
                               
                                    
                                    <div class ="col-xsm-2 btn-group espacio">
                                   <button id="btnmodifica" runat="server" type="submit" class="btn btn-primary" onserverclick="btnModificar_Click">
                                    <span aria-hidden="true"  class="glyphicon glyphicon-floppy-open">&nbsp;Modificar
                                    </span>
                                    </button>
                                    </div>
                                                         

                                  <%--  <div class ="col-xsm-2 btn-group espacio">
                                    <asp:LinkButton ID="btnEliminar" runat="server" class="btn btn-primary" OnClick="btnEliminar_Click"  > 
                                    <span class="glyphicon glyphicon-trash"></span>&nbsp;Eliminar</asp:LinkButton>
                                    </div>--%>
                                     
                                    <div class ="col-xsm-2 btn-group espacio">
                                    <asp:LinkButton ID="btnBuscar" runat="server" class="btn btn-primary" OnClick="btnBuscar_Click" > 
                                    <span class="fa fa-filter"></span>&nbsp;Buscar</asp:LinkButton>
                                    </div>
                                    <div class ="col-xsm-2 btn-group espacio">
                                    <asp:LinkButton ID="btnImprimir" runat="server" class="btn btn-primary" OnClick="btnImprimir_Click" > 
                                    <span class="glyphicon glyphicon-print"></span>&nbsp;Imprimir</asp:LinkButton>
                                    </div>
                                     
                                </div>
                                                   
                                </div>
                                <div style="background-color: white">
                                <div id ="PanelDatos" runat="server" class="panel-body">                                                                        
                                    
                              
                                        
                                        <div class="col-md-6">
                                          
                                                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        <ContentTemplate>
                                            <div class="form-group">
                                         
                                                <label class="col-md-3 control-label ">Nombre</label>
                                            
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                            
                                                         <asp:TextBox ID="txtNombre" CssClass="form-control"  runat="server"  onfocus="this.Text = '';" onblur="if (this.Text == '') {this.Text = 'txtNombre';}" required="" AutoPostBack="False" ></asp:TextBox>                                                      </div>                                            
                                                    
                                                </div>
                                            </div>

                                           
                                                        
                                            <div runat="server" id="ddl" class="form-group">
                                                <label class="col-md-3 control-label">Tipo de establecimiento</label>
                                                <div class="col-md-9">  
                                           
                                                        <asp:DropDownList ID="ddlTipo" class="form-control"  runat="server" OnSelectedIndexChanged="ddlTipo_SelectedIndexChanged" OnTextChanged="ddlTipo_TextChanged" AutoPostBack="true" >
                                                            <asp:ListItem>...</asp:ListItem>
                                                         
                                                          
                                                        </asp:DropDownList>   
                                                           
                                                
                                                                    
                                                   
                                                </div>
                                            </div>
                                                                              
                                            <div class="form-group"> 
                                             
                                                <label class="col-md-3 control-label">Establecimiento</label>
                                                <div class="col-md-9">  
                                            
                                                        <asp:DropDownList ID="DdlEstablecimiento" class="form-control "  runat="server" OnSelectedIndexChanged="DdlEstablecimiento_SelectedIndexChanged" AutoPostBack="True">
                                                            <asp:ListItem>...</asp:ListItem>
                                     
                                                        </asp:DropDownList> 
                                                                 
                                              
                                                </div>
                                             </div>
                                                        
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Descripción</label>
                                                <div class="col-md-9">     
                                                    
                                                    <div class="input-group">
                                                    <span class="input-group-addon"><span class="fa fa-pencil"></span></span>

                                                     <asp:TextBox ID="txtDescripcion" runat="server" class="form-control" value="" onfocus="this.Text = '';" onblur="if (this.Text == '') {this.Text = 'txtDescripcion';}" required="" AutoPostBack="False"></asp:TextBox>                                      
                                                   
                                                    <span class="help-block">  </span>
                                                </div>
                                            </div>

                                            
                                        </div>
                                                                   
                                            <div class="form-group"> 
                                             
                                                <label class="col-md-3 control-label">Estatus</label>
                                                <div class="col-md-9">  
                                                         <asp:DropDownList ID="ddlEstatus"  class="form-control"  runat="server" AutoPostBack="True">
                                                    <asp:ListItem>Activo</asp:ListItem>
                                                    <asp:ListItem>Desactivado</asp:ListItem>

                                                </asp:DropDownList>
                                                </div>
                                             </div>
                                                             </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                             
                                            <div class="form-group">
                                                <div class=" row">
                                                <div class="col-md-3">
                                                     <asp:Image ID="Image1" Visible = "false" runat="server" Height = "100" Width = "100" />
                                                </div>
                                                <div class="col-md-9">  
                                                    <label>Seleccionar</label>   
                                                    <asp:FileUpload ID="FileUpload2" runat="server" class="file" style="width:200px" />

                                                <asp:TextBox ID="txtID" runat="server" class="form-control" Visible ="false"></asp:TextBox> 
                                                 </div>
                                          
                                              </div>
                                                <div class="panel panel-default">
                             <div class="col-md-9">

                                            

                        </div>
                            </div>                        

                                                   
                                            </div>
                                                      
                                         </div>
                                        <div class="col-md-1"></div>
                                        <div class="col-md-5 ">
                                            <div class="form-group">
                                            
                                               <label class=" control-label pull-left">Dirección</label>
                                                <br />
                                            <br />
                                                  
                                            <input  id="address" type="text"  style="width:350px "  />
                                                <br />
                                                <br />
                                            <input id="Buscar" type="button" value="Buscar Dirección" class="btn btn-primary"/> 
                                          
                                            <br />
                                             <div id="map" style="width: 400px; height: 400px;">  
                                              <br />
                                                        <script type='text/javascript'>
                                                    var map = null;
	                                        var marker = null;

	                                        function initialize() {
	                                            var myLatlng = new google.maps.LatLng(20.9373538, -89.60034059999998);
	                                            var myOptions = {
	                                                zoom: 10,
	                                                center: myLatlng,
	                                                mapTypeId: google.maps.MapTypeId.ROADMAP
	                                            };
	                                            map = new google.maps.Map($("#map").get(0), myOptions);
		                                        marker = new google.maps.Marker({ map: map });
	                                        }

	                                        $('#Buscar').live('click', function() {
	                                            var address = $("#address").val() + " Merida yucatan";
	                                            var geocoder = new google.maps.Geocoder();
	                                            geocoder.geocode({ 'address': address }, geocodeResult);
	                                            document.getElementById('<%=txtDireccion.ClientID %>').value = (address);
	                                            document.getElementById("#address").value = (document.getElementById('<%=txtDireccion.ClientID %>').value);
	                                            //$("#dire").val(address);
	                                        });
                                             $('#address').live('click', function () {
	                                             document.getElementById('#address').value = (document.getElementById('<%=txtDireccion.ClientID %>').value);
	                                            
	                                        });
                                           

	                                        function geocodeResult(results, status) {
	                                            if (status == 'OK') {
			                                        map.setCenter(results[0].geometry.location);
			                                        //$('#Text1').va(results[0].geometry.location.lat());
	                                                //$('#longitude').text(results[0].geometry.location.lng());
			                                        document.getElementById('<%=latitude.ClientID %>').value = (results[0].geometry.location.lat());
                                                    document.getElementById('<%=longitude.ClientID %>').value = (results[0].geometry.location.lng());
	                                                map.fitBounds(results[0].geometry.viewport);
	                                                marker.setPosition(results[0].geometry.location);
	                                            } else {
	                                                alert("Geocoding no tuvo éxito debido a: " + status);
	                                            }
	                                        }

                                        $(document).ready(function() {
                                            initialize();
                                        gmaps_ads();
                                        });        </script>
           
         
                                            <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBRxC6Y4f-j6nECyHWigtBATtJyXyha-XU&libraries=adsense&sensor=true&language=es"></script>

                                          </div>  
                                                 <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                        <ContentTemplate>
                                            <asp:TextBox ID="latitude" runat="server" Text=""></asp:TextBox>
                                            <asp:TextBox ID="txtDireccion" runat="server" Text="" style="width:0px "></asp:TextBox>     
                                            <asp:TextBox ID="longitude" runat="server" Text=""></asp:TextBox>
                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                             
                                                            </div>
                                                    
                                         </div>
                             </div>  
                               
                            </div>
                             </div>
                                
                           </div>
                                
                                
                            
                          
                                      <div class="panel panel-default">
                                <div class="row">
                                 <div class="col-md-12">
                                     <div class="panel-body">
                                          <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                        <ContentTemplate>
                                     <asp:GridView ID="grResultado" CssClass="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="IdSitio" OnRowCommand="grResultado_RowCommand" OnSelectedIndexChanged="grResultado_SelectedIndexChanged" OnRowDeleting="grResultado_RowDeleting" OnRowDataBound="grResultado_RowDataBound">
                                         <Columns>
                                             <asp:BoundField DataField="IdSitio" HeaderText="CLAVE" SortExpression="IdSitio" />
                                             <asp:BoundField DataField="Nombre" HeaderText="NOMBRE" SortExpression="Nombre" />
                                             <asp:BoundField DataField="Descripcion" HeaderText="DESCRIPCIÓN" SortExpression="Descripcion" />
                                             <asp:BoundField DataField="direccion" HeaderText="DIRECCIÓN" SortExpression="direccion" />
                                             <asp:BoundField DataField="Estatus" HeaderText="ESTATUS" SortExpression="Estatus" />
                                             <asp:ButtonField ButtonType="Button" CommandName="SELECT" HeaderText="SELECCIONAR" ControlStyle-CssClass="btn btn-primary" ShowHeader="True" Text="SELECCIONAR" />
                                             <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="ELIMINAR" ShowHeader="True" Text="ELIMINAR"  />
                                            
                                         </Columns>
                                         </asp:GridView>
                                                             </ContentTemplate>
                                                        </asp:UpdatePanel>
                                     </div>

                                 </div>

                            </div>
                            </div>     
                                                      

                            
                        </div>
                    </div>   
             
        </div>


    
</asp:Content>
