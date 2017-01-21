<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="AgregarSitio.aspx.cs" Inherits="ProyectoIntegrador.GUI.CatalogoParques" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="breadcrumb" runat="server">
    <li><a href="Index.aspx ">Principal</a></li>
    <li class="active">Agregar Sitio</li>
</asp:Content>
 
<asp:Content ID="Content3" ContentPlaceHolderID="titulo" runat="server">
    Agregar sitio
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





     <div class="row">
                        <div class="col-md-12">
                            
                            <div  class="form-horizontal">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                   
                                    <ul class="panel-controls">
                                     
                                    </ul>
                                </div>
                                <div class="panel-body">
                                    <p>Podras dar de alta a cualquier establecimiento que desées </p>
                                </div>
                                <div class="panel-body">                                                                        
                                    
                              
                                        
                                        <div class="col-md-6">
                                            
                                            <div class="form-group">
                                         
                                                <label class="col-md-3 control-label">Nombre</label>
                                            
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtNombre" class="form-control" runat="server"></asp:TextBox>                                                      </div>                                            
                                                    <%--   <span class="help-block">This is sample of text field</span>--%>
                                                </div>
                                            </div>
                                            
                                         
                                           
                                             <div class="form-group">
                                                <label class="col-md-3 control-label">Tipo de establecimiento</label>
                                                <div class="col-md-9">  
                                                        <asp:DropDownList ID="ddlTipo" class="form-control select"  runat="server">
                                                           
                                                            <asp:ListItem>Túristico</asp:ListItem>

                                                        </asp:DropDownList>                                        
                                                    
                                                <%--    <span class="help-block">Select box example</span>--%>
                                                </div>
                                            </div>
                                        
                                             
                                             <div class="form-group"> 
                                             
                                                <label class="col-md-3 control-label">Establecimiento</label>
                                                <div class="col-md-9">  
                                                        <asp:DropDownList ID="DdlEstablecimiento" class="form-control select"  runat="server">
                                                           
                                                             <asp:ListItem>Parques</asp:ListItem>
                                                            <asp:ListItem>Iglesias</asp:ListItem>
                                                            <asp:ListItem>Esquinas</asp:ListItem>
                                                            <asp:ListItem>Eventos</asp:ListItem>
                                                            <asp:ListItem>Museos</asp:ListItem>
                                                            <asp:ListItem>Rutas</asp:ListItem>
                                                            <asp:ListItem>SitiosHistoricos</asp:ListItem>

                                                        </asp:DropDownList>                                        
                                                    
                                                <%--    <span class="help-block">Select box example</span>--%>
                                              
                                                </div>
                                             </div>


                                             <div class="form-group">
                                  
                                            
                                                <label class="col-md-3 control-label">Ubicación</label>
                                                <div class="col-md-9">   
                                                    
                                                                     
                                                    <div class="input-group">

                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                         <asp:TextBox ID="txtUbicacion" class="form-control" runat="server"></asp:TextBox>                                                      </div>                                            
                                                 <%--   <span class="help-block">This is sample of text field</span>--%>
                                                </div>
                                            </div>
                                            
                                            
                                        </div>


                                        <div class="col-md-6">
                                            
                                        
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Descripción</label>
                                                <div class="col-md-9 col-xs-12">     
                                                    
                                                     <asp:TextBox ID="txtDescripcion" runat="server" class="form-control" rows="5"></asp:TextBox>                                      
                                                   
                                                    <span class="help-block">  </span>
                                                </div>
                                            </div>
                                            
                                            
                                              <%--  <label class="col-md-3 control-label">Foto</label>
                                                <div class="col-md-9">    
                                                    <asp:FileUpload ID="FileUpload1" class="btn-primary" runat="server" />
                                                    
                                                    
                                                    <span class="help-block">archivo</span>
                                                </div>--%>
                                               


                                          
                                     
                                   <div class="panel panel-default pull-right">
                                    <div class="panel-body">
                                     <h3><span class="fa fa-mail-forward"></span> Seleccionar foto</h3>
                                      <div class="form-group">
                                            <div class="col-md-8">
                                                <label>Seleccionar</label>
                                                <asp:FileUpload ID="FileUpload1" runat="server"  class="file" />
                                                 </div>
                                          
                                        </div>
                                    
                               
                                </div>
                            </div>

                                 

                                 </div>
                                  

                               
                                <div class="panel-footer">
                                    <div class="col-xsm-7">
                                      </div>
                                    <div class="col-xsm-2">
                                 
                                    <asp:LinkButton ID="txtLimpiar" runat="server" class="btn btn-default pull-right" > <span class="glyphicon glyphicon-refresh"></span>&nbsp;Limpiar</asp:LinkButton>
                                   
                                    </div>
                                    <div class="col-md-1">

                                    </div>
                                    <div class ="col-xsm-2">
                                    <asp:LinkButton ID="btnEnviar" runat="server" class="btn btn-primary pull-right" OnClick="Enviar_Click" > <span class=" glyphicon glyphicon-floppy-open"></span>&nbsp; Enviar</asp:LinkButton>

                                         
                                   </div>
                                  
                                </div>
                            
                            </div>
                            
                        </div>
                    </div>        


</asp:Content>
