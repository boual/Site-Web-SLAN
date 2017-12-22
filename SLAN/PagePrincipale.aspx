<%@ Page Title="" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/MasterPrincipal.Master" AutoEventWireup="true" CodeBehind="PagePrincipale.aspx.cs" Inherits="SLAN___Site_Web.PagePrincipale" %>

<%-- Partie faite par Karine Desrosiers --%>

<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Page" runat="server">

    <%--Lien vers le fichier javascript--%>
    <script src="~/jquery.videoBG.js" type="text/javascript"></script>

    <style>

        /*Page*/
        #contenu
        {
            width: 100%;
            position: absolute;
            top: 0;
            left: 0;
        }

        /*Vidéo*/
        #video
        {
            height: 600px;
        }
        video 
        { 
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
            width: auto;
            height: auto;
            z-index: -100;
            background-size: cover;
            transition: 1s opacity;
        }

        /*Texte par dessus vidéo*/
        #texte
        {
            text-align: center;
            color: white;
            letter-spacing: 0.05em;
            position: relative;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50%);
        }
        #slan
        {
            text-shadow: 0px 3px 1px gray;
            font-size: 65px;
            font-family: Arial, Helvetica, sans-serif;
            margin: auto;
        }
        #edition
        {
            font-size: 65px;
            font-family: 'Century Gothic', Arial, Helvetica, sans-serif;
            font-weight: 100;
            margin: auto;
        }
        .ligneHorizontal
        {
            border-bottom: 1px solid white;
            width: 781px;
            position: relative;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50%);
        }
        #ligneVertical
        {
            border-left: 1px solid white;
            height: 61px;
            position: relative;
            top: 50%;
            left: 44%;
        }
        #datelieu
        {
            font-size: 16px;
            font-family: Arial, Helvetica, sans-serif;
            position: absolute;
            top: 200px;
            left: 32%;
        }
        h2
        {
            display: inline;
        }

        /*Description LAN Party*/
        #information 
        {
            height: 600px;
            background-color: rgb(41, 53, 89);
        }
        .texteInfo
        {
            color: white;
            font-family: Arial, Helvetica, sans-serif;
            position: relative;
            top: 50%;
            left: 50%;
            transform: translateX(-50%) translateY(-50%);
        }
        .titre
        {
            font-size: 4em;
            letter-spacing: 0.05em;
            width: 781px;
            margin: auto;
        }
        .titreMoyen
        {
            text-align: center;
            font-size: 1.5em;
            margin: auto;
        }
        .paragraphe
        {
            font-size: 18px;
            line-height: 1.5em;
            text-align: justify;
            width: 781px;
            margin: auto;
        }

        /*Photos éditions précédentes*/
        #editions
        {
            height: 900px;
            background-color: rgb(33, 33, 33);
        }

    </style>

    <div id="contenu">

        <div id="video">

            <video 
            autoplay="autoplay"
            loop="loop" 
            id="bgvid">
            <source 
                src="video/slan revolution.mp4" 
                type="video/mp4"/>
            </video>


            <script>
                var video = document.getElementById("bgvid"), pauseButton = document.querySelector("#polina button");
                video.muted = true;

                function vidFade()
                {
                video.classList.add("stopfade");
                }


                video.addEventListener('touchstart', function (e)
                {
                    e.preventDefault();
                    video.play();
                });
            </script>


            <div id="texte">

                <h1 id="slan">SLAN Revolution 2018</h1>

                <h1 id="edition"><%= Resources.Site.Edition %></h1>
                <br />

                <div class="ligneHorizontal"></div>

                <div id="ligneVertical"></div>

                <div id="datelieu">

                    <h2 style="padding-right: 5.4em;"><%= Resources.Site.Date %></h2>
                    <h2><%= Resources.Site.Lieu %></h2>

                </div>
                
            </div>

        </div>

            

        <div id="information">

            <div class="texteInfo">

                <h1 class="titre"><%= Resources.Site.LAN %></h1>
                <br /><br /><br />

                <div class="ligneHorizontal"></div>
                <br /><br />

                <h1 class="titreMoyen"><%= Resources.Site.LAN2 %></h1>
                <br /><br />

                <p class="paragraphe"><%= Resources.Site.Presentation %></p>

            </div>
            
        </div>



        <div id="editions">

            <div class="texteInfo">

                <h1 class="titre"><%= Resources.Site.Editions %></h1>
                <br /><br /><br />

                <div class="ligneHorizontal"></div>
                <br /><br />

                <div class="titreMoyen">
                    <asp:Label ID="lb_Annee" runat="server" Text="2017"></asp:Label>
                    <br /><br />

                    <table class="titreMoyen">
                        <tr>
                            <td style="padding-right: 2em;"><asp:ImageButton ID="ib_Gauche" OnClick="Ib_Gauche_Click"  ImageUrl="~/ImagesPagePrincipale/Flèche_Gauche.png" runat="server" /></td>
                            <td><asp:Image ID="image_Edition" ImageUrl="~/ImagesPagePrincipale/SLAN2017.jpg" Width="720px" Height="480px" runat="server" /></td>
                            <td style="padding-left: 2em;"><asp:ImageButton ID="ib_Droite" OnClick="Ib_Droite_Click" ImageUrl="~/ImagesPagePrincipale/Flèche_Droite.png" runat="server" /></td>
                        </tr>
                    </table>
                </div>

            </div>

        </div>

    </div>
    
</asp:Content>