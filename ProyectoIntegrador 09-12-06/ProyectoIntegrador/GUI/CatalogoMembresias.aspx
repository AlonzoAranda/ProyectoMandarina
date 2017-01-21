<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="CatalogoMembresias.aspx.cs" Inherits="ProyectoIntegrador.GUI.CatalogoMembresias" %>
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
                                         
                                                <label class="col-md-3 control-label">Nombre de la membresia</label>
                                            
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtNombre" class="form-control" runat="server" AutoPostBack="True"></asp:TextBox>                                                      </div>                                            
                                                    <%--   <span class="help-block">This is sample of text field</span>--%>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                         
                                                <label class="col-md-3 control-label">Meses de duración</label>
                                            
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtMeses" class="form-control" runat="server" AutoPostBack="True"></asp:TextBox>                                                      </div>                                            
                                                    <%--   <span class="help-block">This is sample of text field</span>--%>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                         
                                                <label class="col-md-3 control-label">Costo</label>
                                            
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtCosto" class="form-control" runat="server" AutoPostBack="True"></asp:TextBox>                                                      </div>                                            
                                                    <%--   <span class="help-block">This is sample of text field</span>--%>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                         
                                                <label class="col-md-3 control-label">Número de sitios</label>
                                            
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtNumSitios" class="form-control" runat="server" AutoPostBack="True"></asp:TextBox>                                                      </div>                                            
                                                    <%--   <span class="help-block">This is sample of text field</span>--%>
                                                </div>
                                            </div>
                                           
                                                             </ContentTemplate>
                                                        </asp:UpdatePanel>
                                            
                                                      
                                         </div>
                                        <div class="col-md-1"></div>
                                        <div class="col-md-5">

                                                        

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
                                     

                                          <asp:GridView ID="GrMembresia" runat="server" CssClass="table table-bordered table-striped" DataKeyNames="IdMembresia" AutoGenerateColumns="False" OnRowCommand="GrMembresia_RowCommand" OnRowDeleting="GrMembresia_RowDeleting">
                                                               <Columns>
                                             <asp:BoundField DataField="IdMembresia" HeaderText="CLAVE" SortExpression="IdSitio" />
                                             <asp:BoundField DataField="NombreMembresia" HeaderText="NOMBRE DE LA MEMBRESIA" SortExpression="Nombre" />
                                             <asp:BoundField DataField="DuracionMeses" HeaderText="DURACIÓN (MESES)" SortExpression="DURACION" />
                                             <asp:BoundField DataField="Costo" HeaderText="COSTO" SortExpression="COSTO" />
                                             <asp:BoundField DataField="NumSitios" HeaderText="NÚMERO DE SITIOS" SortExpression="NUMERO" />

                                             <asp:ButtonField ButtonType="Button" CommandName="sele" HeaderText="SELECCIONAR" ShowHeader="True" Text="SELECCIONAR" />
                                             <asp:ButtonField ButtonType="Button" CommandName="Dele" HeaderText="ELIMINAR" ShowHeader="True" Text="ELIMINAR" />
                                            
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
