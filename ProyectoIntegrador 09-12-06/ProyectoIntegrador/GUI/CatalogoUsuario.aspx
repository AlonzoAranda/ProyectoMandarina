<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="CatalogoUsuario.aspx.cs" Inherits="ProyectoIntegrador.GUI.CatalogoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="breadcrumb" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="titulo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel-body tab-content">
                                        

                                        <div class="row">
                        <div class="panel-footer col-md-12">
                      
                            
                        
                            <div  class="form-horizontal">
                                   
                            <div class="panel panel-default">
                                <div class ="panel-body">
                                
                                <div class=" pull-right">
                                    
                                    <div class="col-xsm-2 btn-group  espacio">
                                 
                                    <asp:LinkButton ID="txtLimpiar" runat="server" class="btn btn-default " OnClick="txtLimpiar_Click1"    > <span class="glyphicon glyphicon-refresh"></span>&nbsp;Limpiar</asp:LinkButton>
                                   
                                    </div>
                                    <div class ="col-xsm-2 btn-group espacio">
                                    <asp:LinkButton ID="btnEnviar" runat="server" class="btn btn-primary" OnClick="btnEnviar_Click" > 
                                    <span class="fa fa-save"></span>&nbsp;Agregar</asp:LinkButton>
                                    </div>
                                    <div class ="col-xsm-2 btn-group  espacio">
                                    <asp:LinkButton ID="btnModificar" runat="server" class="btn btn-primary " OnClick="btnModificar_Click" > 
                                    <span class=" glyphicon glyphicon-floppy-open"></span>&nbsp;Modificar</asp:LinkButton>
                                    </div>
                                    <div class ="col-xsm-2 btn-group espacio">
                                    <asp:LinkButton ID="btnEliminar" runat="server" class="btn btn-primary" OnClick="btnEliminar_Click"  > 
                                    <span class="glyphicon glyphicon-trash"></span>&nbsp;Eliminar</asp:LinkButton>
                                    </div>
                                    <div class ="col-xsm-2 btn-group espacio">
                                    <asp:LinkButton ID="btnBuscar" runat="server" class="btn btn-primary" OnClick="btnBuscar_Click"  > 
                                    <span class="fa fa-filter"></span>&nbsp;Buscar</asp:LinkButton>
                                    </div>
                                    <div class ="col-xsm-2 btn-group espacio">
                                    <asp:LinkButton ID="btnImprimir" runat="server" class="btn btn-primary" OnClick="btnImprimir_Click"  > 
                                    <span class="glyphicon glyphicon-print"></span>&nbsp;Imprimir</asp:LinkButton>
                                    </div>
                                    
                                </div>
                               
                                </div>
                                
                                <div class="panel-body">                                                                        
                                    
                              
                                        
                                        <div class="col-md-6">
                                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        <ContentTemplate>
                                            <div class="form-group">
                                         
                                                <label class="col-md-3 control-label">Nombre</label>
                                            
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtNombre" class="form-control" runat="server" AutoPostBack="True"></asp:TextBox>                                                      </div>                                            
                                                    <%--   <span class="help-block">This is sample of text field</span>--%>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                         
                                                <label class="col-md-3 control-label">Apellido paterno</label>
                                            
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtApepat" class="form-control" runat="server" AutoPostBack="True"></asp:TextBox>                                                      </div>                                            
                                                    <%--   <span class="help-block">This is sample of text field</span>--%>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                         
                                                <label class="col-md-3 control-label">ApellidoMaterno</label>
                                            
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtApeMat" class="form-control" runat="server" AutoPostBack="True"></asp:TextBox>                                                      </div>                                            
                                                    <%--   <span class="help-block">This is sample of text field</span>--%>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                         
                                                <label class="col-md-3 control-label">Usuario</label>
                                            
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtUsuario" class="form-control" runat="server" AutoPostBack="True"></asp:TextBox>                                                      </div>                                            
                                                    <%--   <span class="help-block">This is sample of text field</span>--%>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                         
                                                <label class="col-md-3 control-label">Contraseña</label>
                                            
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtContrasena" class="form-control" runat="server" AutoPostBack="True"></asp:TextBox>                                                      </div>                                            
                                                    <%--   <span class="help-block">This is sample of text field</span>--%>
                                                </div>
                                            </div>
                                           
                                                             </ContentTemplate>
                                                        </asp:UpdatePanel>
                                            
                                                      
                                         </div>
                                        <div class="col-md-1"></div>
                                        <div class="col-md-5">
                                            <div class="form-group">
                                               
                                                     <asp:Image ID="Image1" Visible = "false" runat="server" Height = "100" Width = "100" />
                                               
                                                    <label>Seleccionar</label>   
                                                <asp:FileUpload ID="FileUpload1" runat="server"  class="file" style="width:200px" />

                                                <asp:TextBox ID="txtID" runat="server" class="form-control" Visible ="false"></asp:TextBox> 
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
                                     
                                                 <asp:GridView ID="GrTipo" CssClass="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" OnRowCommand="grResultado_RowCommand" OnRowDeleting="GrTipo_RowDeleting" >
                                         <Columns>
                                             <asp:BoundField DataField="IdUsuario" HeaderText="CLAVE" SortExpression="IdSitio" />
                                             <asp:BoundField DataField="Nombre" HeaderText="NOMBRE" SortExpression="Nombre" />
                                             <asp:BoundField DataField="ApePat" HeaderText="APELLIDO PATERNO" SortExpression="PATERNO" />
                                             <asp:BoundField DataField="ApeMat" HeaderText="APELLIDO MATERNO" SortExpression="MATERNO" />
                                             <asp:BoundField DataField="Usuario" HeaderText="USUARIO" SortExpression="USUARIO" />
                                             <asp:BoundField DataField="Contrasena" HeaderText="CONTRASENA" SortExpression="CONTRASENA" />


                                             <asp:ButtonField ButtonType="Button" CommandName="SELECT" HeaderText="SELECCIONAR" ShowHeader="True" Text="SELECCIONAR" />
                                             <asp:ButtonField ButtonType="Button" CommandName="BORRARR" HeaderText="ELIMINAR" ShowHeader="True" Text="ELIMINAR" />
                                            
                                         </Columns>
                                                      <EmptyDataTemplate>
                                                        No hay Datos Disponibles para Mostrar
                                                      </EmptyDataTemplate> 
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
