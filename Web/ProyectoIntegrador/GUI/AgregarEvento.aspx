<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="AgregarEvento.aspx.cs" Inherits="ProyectoIntegrador.GUI.AgregarEvento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="breadcrumb" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="titulo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                        <div class="panel-footer col-md-12">
                      
                              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        
                            <div  class="form-horizontal">
                                   
                            <div class="panel panel-default">
                                <div class ="panel-body">
                                    

                                <div class=" pull-right">
                              
                                    
                                       <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-default " >
                                  
                                        <span class="glyphicon glyphicon-refresh"></span>&nbsp;Limpiar</asp:LinkButton>
                                   
                                                     
                                    <div class ="col-xsm-2 btn-group espacio">
                                   <button id="btnGuardar" runat="server" type="submit" class="btn btn-primary" >
                                    <span aria-hidden="true"  class="fa fa-save">&nbsp;Agregar
                                    </span>
                                    </button>
                                    
                                    </div>
                                    
                                    
                               
                                    
                                    <div class ="col-xsm-2 btn-group espacio">
                                   <button id="btnmodifica" runat="server" type="submit" class="btn btn-primary" >
                                    <span aria-hidden="true"  class="glyphicon glyphicon-floppy-open">&nbsp;Modificar
                                    </span>
                                    </button>
                                    </div>
                                                         

                                  <%--  <div class ="col-xsm-2 btn-group espacio">
                                    <asp:LinkButton ID="btnEliminar" runat="server" class="btn btn-primary" OnClick="btnEliminar_Click"  > 
                                    <span class="glyphicon glyphicon-trash"></span>&nbsp;Eliminar</asp:LinkButton>
                                    </div>--%>
                                     
                                    <div class ="col-xsm-2 btn-group espacio">
                                    <asp:LinkButton ID="btnBuscar" runat="server" class="btn btn-primary"  > 
                                    <span class="fa fa-filter"></span>&nbsp;Buscar</asp:LinkButton>
                                    </div>
                                    <div class ="col-xsm-2 btn-group espacio">
                                    <asp:LinkButton ID="btnImprimir" runat="server" class="btn btn-primary" > 
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
                                     
                                                             </ContentTemplate>
                                                        </asp:UpdatePanel>
                                     </div>

                                 </div>

                            </div>
                            </div>     
                                                      

                            
                        </div>
                    </div>        

</asp:Content>
