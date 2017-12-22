<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPrincipal.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="SLAN.Réservation" UICulture="auto" %>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Page" runat="server">

    <style>
        .Titre{
            margin-top:2%;
            color:white;
            
            font-size:xx-large;
        }
        .centre{
            text-align:center;
            width:100%;
        }
        .label{
            color:white;
        }
        .validator{
            color:white;
        }

    </style>
    <div class="centre">
    <asp:Label CssClass="Titre" runat="server" Text="<%$ Resources:plan %>"></asp:Label>
    <br />
    <br />
    <br />
        
        <%-- Grid view invisible pour gérer les réservations --%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="No place" DataSourceID="SqlDataSource1" Visible="False">
            <Columns>
                <asp:BoundField DataField="No place" HeaderText="No place" ReadOnly="True" SortExpression="No place" />
                <asp:BoundField DataField="Prenom" HeaderText="Prenom" SortExpression="Prenom" />
                <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="No Billet" HeaderText="No Billet" SortExpression="No Billet" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Place]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Place]"></asp:SqlDataSource>
   <%-- Plan de la salle --%>
         <asp:Image ID="site" runat="server" ImageUrl="~/plan slanfinal.PNG" >
    </asp:Image>
     <br />
        <br />
    <asp:Label CssClass="label" ID="liste" Text="<%$ Resources:dispo %>" runat="server"></asp:Label>
    <asp:Label CssClass="label" ID="place" runat="server"></asp:Label>
        <br />
        <br />
      <div class="reserver">
          <asp:Label CssClass="label" ID="noplace" Text="<%$ Resources:place %>" runat="server"></asp:Label>
          <asp:TextBox ID="tbplace" runat="server"></asp:TextBox>
          <%-- Valide que les champs sont remplis --%>
          <asp:RequiredFieldValidator CssClass="validator" id="RequiredFieldValidator3"
                    ControlToValidate="tbplace"
                    Display="Dynamic"
                    ErrorMessage="<%$ Resources:requis %>"
                    runat="server" ValidationGroup="reserver"/>
          <asp:Label CssClass="label" ID="lbbill" Text="<%$ Resources:billet %>" runat="server"></asp:Label>
          <asp:TextBox ID="tbBill" runat="server"></asp:TextBox>
         
          <asp:RequiredFieldValidator CssClass="validator" id="RequiredFieldValidator1"
                    ControlToValidate="tbBill"
                    Display="Dynamic"
                    ErrorMessage="<%$ Resources:requis %>"
                    runat="server" ValidationGroup="reserver"/>
          <asp:Label CssClass="label" ID="lbprenom" Text="<%$ Resources:prenom %>" runat="server"></asp:Label>
          <asp:TextBox  ID="tbPrenom" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator CssClass="validator" id="RequiredFieldValidator2"
                    ControlToValidate="tbPrenom"
                    Display="Dynamic"
                    ErrorMessage="<%$ Resources:requis %>"
                    runat="server" ValidationGroup="reserver"/>
          <asp:Label CssClass="label" ID="lbnom" Text="<%$ Resources:nom %>" runat="server"></asp:Label>
          <asp:TextBox ID="tbNom" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator CssClass="validator" id="RequiredFieldValidator4"
                    ControlToValidate="tbNom"
                    Display="Dynamic"
                    ErrorMessage="<%$ Resources:requis %>"
                    runat="server" ValidationGroup="reserver"/>
          <asp:Label CssClass="label" ID="lbemail" Text="<%$ Resources:email %>" runat="server"></asp:Label>
          <asp:TextBox ID="tbemail" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator CssClass="validator" id="RequiredFieldValidator5"
                    ControlToValidate="tbemail"
                    Display="Dynamic"
                    ErrorMessage="<%$ Resources:requis %>"
                    runat="server" ValidationGroup="reserver"/>
          <%-- Valide que c'est une addresse email --%>
          <asp:RegularExpressionValidator CssClass="validator" ID="validationEmail" runat="server"     
                                    ErrorMessage="<%$ Resources:verif %>" 
                                    ControlToValidate="tbemail"     
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="reserver" />
          <br />
        <br />
          <asp:Button ID="reserver" runat="server" Text="<%$ Resources:reserver %>" OnClick="reserver_Click" ValidationGroup="reserver" />
      </div>
     </div>
</asp:Content>

