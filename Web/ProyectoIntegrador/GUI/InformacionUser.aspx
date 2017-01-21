<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="InformacionUser.aspx.cs" Inherits="ProyectoIntegrador.GUI.InformacionUser" %>

<%@ Register Assembly="DevExpress.Web.v16.1, Version=16.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="breadcrumb" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="titulo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-content-wrap">
                    <div class="panel-body tab-content">
                    <div class="row">
                        <div class="col-md-12">
                            
                            <div class="form-horizontal">
                                                            
                                
                                    <div class="panel-body tab-content">
                                    

                                            <div class="form-group">
                                                <asp:Label ID="lblNombre" runat="server" Text="Nombre:" CssClass="col-md-3 col-xs-12 control-label"></asp:Label>
                                               
                                                <div class="col-md-6 col-xs-12">         
                                                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>                                                                                                                                                                                      
                                                </div>
                                            </div>
                                          
                                            <div class="form-group">
                                                <asp:Label ID="lblApellidos" runat="server" Text="Apellidos:" CssClass="col-md-3 col-xs-12 control-label"></asp:Label>
                                                
                                                <div class="col-md-6 col-xs-12">      
                                                  <asp:TextBox ID="txtApPAt" CssClass="form-control" runat="server"></asp:TextBox>                                  
                                                </div>
                                            </div>
                                        <div class="form-group">
                                                <asp:Label ID="Label1" runat="server" Text="Apellidos:" CssClass="col-md-3 col-xs-12 control-label"></asp:Label>
                                                
                                                <div class="col-md-6 col-xs-12">      
                                                  <asp:TextBox ID="txtAPMAt" CssClass="form-control" runat="server"></asp:TextBox>                                  
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <asp:Label ID="lblUsuario" runat="server" Text="Usuario:" CssClass="col-md-3 col-xs-12 control-label"></asp:Label>

                                                <div class="col-md-6 col-xs-12">      
                                                  <asp:TextBox ID="txtUsuario" CssClass="form-control" runat="server"></asp:TextBox>                                  
                                                </div>
                                            </div>
                                          <%--  <div class="form-group">
                                                <asp:Label ID="lblContraActual" runat="server" Text="Contraseña actual:" CssClass="col-md-3 col-xs-12 control-label"></asp:Label>

                                                <div class="col-md-6 col-xs-12">      
                                                  <asp:TextBox ID="txtContraActual" CssClass="form-control" runat="server" TextMode="Password" ></asp:TextBox>                                  
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label ID="lblContra" runat="server" Text="Contraseña Nueva:" CssClass="col-md-3 col-xs-12 control-label"></asp:Label>

                                                <div class="col-md-6 col-xs-12">      
                                                  <asp:TextBox ID="txtContra" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>                                  
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                            <asp:Label ID="lblRepContra" runat="server" Text="Confirmar Contraseña:" CssClass="col-md-3 col-xs-12 control-label"></asp:Label>

                                                <div class="col-md-6 col-xs-12">      
                                                  <asp:TextBox ID="txtRepContra" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>                                  
                                                </div>
                                            </div>--%>
                                            <div class="row">
                                            <div class="col-md-2 "></div>
                                            <div class="col-md-8">

                                              <div >
                              
                                    <h3><span class="fa fa-mail-forward"></span>Seleccionar foto</h3>
                                 <%-- <p>Add class <code>file</code> to file input to get Bootstrap FileInput plugin</p>--%>                                    
                                    <div enctype="multipart/form-data" class="form-horizontal">                                        
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Por defecto</label>
                                                <asp:FileUpload ID="FileUpload1" CssClass="file" runat="server"  style="width:200px" />
                                                
                                     
                                            
                                        </div>
                                    
                                    </div>
                                </div>
                            </div>
                            
                                            </div>
                                            <div class="col-md-2 "></div>

                                                
                                            </div>      
                                        </div>
                                     


                     <div class="panel-footer">   
                         
                                                                                              
                                          <asp:LinkButton ID="btnGuardar" runat="server" CssClass="btn btn-primary pull-right" OnClick="btnGuardar_Click">Guardar Cambios <span class="fa fa-floppy-o fa-right"></span></asp:LinkButton>                                                                      
                                    </div>


                                
                                   
                                  
                                </div>                                
                            
                            </div>
                            
                        </div>
                    </div>                    
                    </div>
                                                   
             
   
</asp:Content>
