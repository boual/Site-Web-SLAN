<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Snapcode.aspx.cs" Inherits="SLAN.Snapcode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

  <link rel="shortcut icon" type="image/x-icon" href="~/icone.ico" />

<style>

        *
    {
        background-color:black;
    }

    .texte
    {
        position:absolute;
        left:0;
        top:4%;
        width:100%;
        text-align:center;
        color:white;
        font-family:Verdana;
        text-shadow: 2px 0 0 gray, 0 2px 0 gray, 0 -2px 0 gray, -2px 0 0 gray;
    }

    .image
    {
        position:absolute;
        left:0;
        top:15%;
        width:100%;
        text-align:center;
    }

    .user
    {
        position:absolute;
        left:0;
        top:70%;
        width:100%;
        text-align:center;
        color:white;
        font-family:Verdana;
        text-shadow: 2px 0 0 gray, 0 2px 0 gray, 0 -2px 0 gray, -2px 0 0 gray;
    }

    .logoSLAN
    {
        position:absolute;
        left:1%;
        top:95%;
    }

    .logoCegep
    {
        position:absolute;
        left:85%;
        top:90%;
    }

</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SLAN Revolution - Snapchat</title>
</head>
<body>
    <form id="Snapcode" runat="server">

    <div class="texte">

            Prenez ce code en photo dans votre application pour nous ajouter à vos amis et nous suivre !
    </div>

    <div class="image">
        <img
            id="snapcode"
            src="images/snapcode.png" />
    </div>


    <div class="user">
        <asp:Label
            id="lb_user"
            runat="server"
            text="Nom d'utilisateur : slanrevolution">
        </asp:Label>
    </div>


    <div class="logoSLAN">
        <img
            id="logoSLAN"
            src="images/logomini.png" />
    </div>

    <div class="logoCegep">
        <img
            id="logoCegep"
            src="images/cegepsi.png" />
    </div>

    </form>
</body>
</html>

