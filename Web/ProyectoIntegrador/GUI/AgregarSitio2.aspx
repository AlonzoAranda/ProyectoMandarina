<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="AgregarSitio2.aspx.cs" Inherits="ProyectoIntegrador.GUI.AgregarSitio2" %>
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
    

    <div class="row">
                        <div class="panel-footer col-md-12">
                      
                              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        
                            <div  class="form-horizontal">
                                   
                            <div class="panel panel-default">
                                <div class ="panel-body">
                                    

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

                                            <div class="form-group">
                                               <label class="col-md-3 control-label">Dirección</label>
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtUbicacion" class="form-control" runat="server" value="" onfocus="this.Text = '';" onblur="if (this.Text == '') {this.Text = 'txtUbicacion';}" required="" AutoPostBack="False"></asp:TextBox>                                                      </div>                                            
                                               
                                                   
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
                                                   
                                            </div>
                                                      
                                         </div>
                                        <div class="col-md-1"></div>
                                        <div class="col-md-5">

                                                            <script src="../js/jquery-1.11.0.min.js"></script>
                                                            <script src="../js/GMapsLatLonPicker.js"></script>

                                                            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBh85_Qcuh0YZH_RmXXa1aly6cU7cU_q9M"></script>

                                                            <style rel="stylesheet" type="text/css">
                                                                .gllpMap {
                                                                    width: 400px;
                                                                    height: 300px;
                                                                }
                                                            </style>
                                                            <fieldset class="gllpLatlonPicker">
                                                                <input type="text" class="gllpSearchField" />
                                                                <input type="button" class="gllpSearchButton" value="Buscar" />
                                                               
                                                                <div class="gllpMap">Google Maps</div>
                                                                <div class="input-group">
                                                                  
                                                                <span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"></span></span>
                                                                 <asp:TextBox ID="txtLatitude" type="text" class="gllpLatitude form-control" runat="server" value="20.96645955666419" Visible="True" OnTextChanged="txtLatitude_TextChanged"></asp:TextBox>                                        
                                                               

                                                           <span class="input-group-addon"><span class="glyphicon glyphicon-map-marker"></span></span>
                                                          <asp:TextBox ID="txtLongitud" type="text" class="gllpLongitude form-control" runat="server" value="-89.62270814819334" OnTextChanged="txtLongitud_TextChanged"></asp:TextBox>
                                                          </div>
                                                                <div class="input-group">
                                                     <%--   <span class="input-group-addon"><span class="glyphicon glyphicon-zoom-in"></span></span>
                                                      --%>  <asp:TextBox ID="txtZomm" runat="server"  class="form-control" type="text" value="7" Visible ="False"></asp:TextBox>
                                                          </div>


                                                            </fieldset>

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

</asp:Content>
