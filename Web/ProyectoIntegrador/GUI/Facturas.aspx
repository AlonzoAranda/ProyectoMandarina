<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="Facturas.aspx.cs" Inherits="ProyectoIntegrador.GUI.Facturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="breadcrumb" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="titulo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-content-wrap">
                
                    <div class="row">
                        <div class="col-md-12">
                            
                            <div class="form-horizontal">
                                                            
                                
                                    <div class="panel-body tab-content">
                                    

                                      
                                            
                                       </div>                                        
                                        <div class="tab-pane" id="tab-third">
                                            <p>EN ESTE APARTADO PODRAS OBSERVAR TUS FACTURAS</p>
                                            
                                           
                                            <asp:GridView ID="Dtgresultado" CssClass="table table-bordered table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="Clave" OnRowCommand="Dtgresultado_RowCommand">
                                            <Columns>
                                                <asp:BoundField DataField="Clave" HeaderText="CLAVE DE LA FACTURA" />
                                                <asp:BoundField  DataField="fecha" HeaderText="FECHA" />
                                              <asp:BoundField DataField="Membresia" HeaderText="TIPO DE MEMBRESIA" />
                                                <asp:BoundField DataField="Duracion" HeaderText="MESES DE DURACIÓN" />
                                                <asp:BoundField DataField="Costo" HeaderText="COSTO" />
                                                <asp:BoundField DataField="numeroSitios" HeaderText="NÚMERO DE SITIOS PERMITIDOS" />
                                         

                                          <asp:ButtonField Text="Detalle de Factura" ButtonType="Button" CommandName="VerFactura" />
                                            </Columns>
                                            </asp:GridView>


                                            
                                        </div>
                                    </div>
                                    
                                   
                                    <%--<div class="panel-footer">                                                                        
                                          <asp:LinkButton ID="btnGuardar" runat="server" CssClass="btn btn-primary pull-right" OnClick="btnGuardar_Click">Guardar Cambios <span class="fa fa-floppy-o fa-right"></span></asp:LinkButton>                                                                      
                                    </div>--%>
                                </div>                                
                            
                            </div>
                            
                        </div>
                   
                                                     
             
</asp:Content>
