<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="Prueba.aspx.cs" Inherits="ProyectoIntegrador.GUI.Prueba" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="breadcrumb" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="titulo" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <div class="page-content-wrap">                
                
      <div class="page-container">
            
           
            <div class="page-content">
                
                
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">                
                
                    <div class="row">
                        <div class="col-md-6">                        

                            <!-- START JQUERY VALIDATION PLUGIN -->
                            <div class="block">
                                <h4>jQuery Validation</h4>
                                <form id="jvalidate" role="form" class="form-horizontal" action="javascript:alert('Form #validate2 submited');">
                                <div class="panel-body">                                    
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Login:</label>  
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="login"/>
                                            <span class="help-block">min size = 2, max size = 8</span>
                                        </div>
                                    </div>      
                                                                                                                            
                                    <div class="btn-group pull-right">
                                         <button class="btn btn-primary" type="submit">Submit</button>
                                    </div>                                                                                                                          
                                </div>                                               
                                </form>
                            <!-- END JQUERY VALIDATION PLUGIN -->
                            </div>
                        </div>
                    </div>

                    
                        
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>

         </ContentTemplate>
    </asp:UpdatePanel>
   




      <script type="text/javascript" src="../js/plugins/jquery/jquery.min.js"></script>
        <!-- END PLUGINS -->
        
        <!-- THIS PAGE PLUGINS -->
        <script type='text/javascript' src='../js/plugins/bootstrap/bootstrap-datepicker.js'></script>        
        <script type='text/javascript' src='../js/plugins/bootstrap/bootstrap-select.js'></script>        

        <script type='text/javascript' src='../js/plugins/validationengine/languages/jquery.validationEngine-en.js'></script>
        <script type='text/javascript' src='../js/plugins/validationengine/jquery.validationEngine.js'></script>        

        <script type='text/javascript' src='../js/plugins/jquery-validation/jquery.validate.js'></script>                

        <script type='text/javascript' src='../js/plugins/maskedinput/jquery.maskedinput.min.js'></script>
        <!-- END THIS PAGE PLUGINS -->               

        <!-- START TEMPLATE -->
        
        <script type="text/javascript" src="../js/plugins.js"></script>

        <!-- END TEMPLATE -->
        
        <script type="text/javascript">
            var jvalidate = $("#jvalidate").validate({
                ignore: [],
                rules: {                                            
                        login: {
                                required: true,
                                minlength: 2,
                                maxlength: 8
                        },
                        password: {
                                required: true,
                                minlength: 5,
                                maxlength: 10
                        },
                        're-password': {
                                required: true,
                                minlength: 5,
                                maxlength: 10,
                                equalTo: "#password2"
                        },
                        age: {
                                required: true,
                                min: 18,
                                max: 100
                        },
                        email: {
                                required: true,
                                email: true
                        },
                        date: {
                                required: true,
                                date: true
                        },
                        credit: {
                                required: true,
                                creditcard: true
                        },
                        site: {
                                required: true,
                                url: true
                        }
                    }                                        
                });                                    

        </script>
        
</asp:Content>
