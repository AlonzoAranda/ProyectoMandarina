<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/MasterPage.Master" AutoEventWireup="true" CodeBehind="Parques.aspx.cs" Inherits="ProyectoIntegrador.GUI.Parques" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="breadcrumb" runat="server">
     <li><a href="Index.aspx ">Principal</a></li>
     <li><a href="Index.aspx ">Sitios turísticos</a></li>
    <li class="active">Parques</li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="titulo" runat="server">
    Gestión de Parques de Mérida
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    
  <script type="text/javascript">
    function openModal() {
        $('#myModal').modal('show');
    }
</script>


    <div class ="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby ="Mymodal" aria-hidden ="true">
              <div class ="modal-dialog">
                  <div class=" modal-content">

                      <div class ="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden ="true">&times;</button>

                          <h3>Crea tu cuenta y goza de los beneficios</h3>
                      </div>
                      <div class="modal-body">
                              
                      </div>
                      <div class="modal-footer">
                                         </div>
                       
                  </div>
              </div>
         </div>



    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

</asp:Content>



