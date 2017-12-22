<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSecondaire.master" AutoEventWireup="true" CodeBehind="Tournois_CS_GO.aspx.cs" Inherits="SLAN.WebForm2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder5" runat="server">
                 
    <style>
        .TextFormat
        {
            text-align: center;
            color: white;
        }
    </style>
     <div class="TextFormat">
        <h2><strong>Règlements Counter Strike: Global Offensive</strong></h2>
            <h3><strong>Structure du tournoi</strong></h3>
                            
            <br />
                <p>S’il y a moins de 6 équipes, les équipes seront distribuées selon une "bracket" à double élimination.</p>
                <p>S’il y a 6 équipes et plus, les équipes seront distribuées au hasard selon des pools et ensuite en "bracket".</p>
                            
            <br />
            <h3><strong>Choix de la carte</strong></h3>
            <br />
                <p>Le choix de la carte se fera selon la manière suivante pour les "Best of 1" :</p>
                            
            <br />
                L’équipe B retire l’une des 7 cartes;
                <br />
                L’équipe A retire l’une des 6 cartes restantes;
                <br />
                L’équipe B retire l’une des 5 cartes restantes;
                <br />
                L’équipe A retire l’une des 4 cartes restantes;
                <br />
                L’équipe B retire l’une des 3 cartes restantes;
                <br />
                L’équipe A choisit une des 2 cartes restantes;
                <br />    
                L’équipe B choisit le côté où elle commencera sur la carte.
                            

            <br />
                <p>Le choix de la carte se fera de la manière suivante pour les "Best of 3" :</p>
                            
                <br />
                L’équipe B retire l’une des 7 cartes;
                <br />
                L’équipe A retire l’une des 6 cartes;
                <br />  
                L’équipe B choisit une carte parmi les 5 restantes;
                <br />
                L’équipe A choisit le côté où elle veut commencer sur la première carte;
                <br />
                L’équipe B choisit une carte parmi les 4 restantes;
                <br />
                L’équipe A choisit le côté où elle veut commencer sur la deuxième carte;
                <br />
                L’équipe A retire une carte parmi les 3 restantes;
                <br />
                L’équipe B retire une carte parmi les 2 restantes;
                <br />
                La carte qui reste sera la dernière jouée.
                           
                            
           <br />

                <p>Les choix des cartes sont les suivants:</p>

                <br />
                de_nuke
                <br />
                de_train
                <br />
                de_mirage
                <br />
                de_inferno
                <br />
                 de_overpass
                 <br />
                 de_cache
                 <br />
                 de_cobblestone
                            
                            
          <br />
          <h3><strong>Paramètre des serveurs</strong></h3>
          <br />

                            
                mp_startmoney 800
                <br />
                sv_cheats 0
                <br />
                mp_roundtime 1.91
                <br />
                mp_freezetime 15
                <br />
                mp_maxrounds 30
                <br />
                mp_c4timer 40
                <br />
                sv_pausable 1
                <br />
                ammo_grenade_limit_default 1
                <br />
                ammo_grenade_limit_flashbang 2
                <br />
                ammo_grenade_limit_total 4
                           
                            
           <br />
           <h3><strong>Paramètres de l’overtime</strong></h3>
           <br />

                <br />
                mp_maxrounds 6
                <br />
                mp_startmoney 16000
                           

           <br />
           <h3><strong>Règlements</strong></h3>
           <br />

                <p>Les équipes peuvent subir des sanctions selon les actions suivantes:</p>

                <br />
                Arriver en retard à l’heure de convocation;
                <br />
                Contester la décision d’un officiel de tournoi;
                <br />
                Utiliser un langage ou des gestes insultants;
                <br />
                Être coupable de comportements antisportifs;
                <br />
                Recevoir plus d’un avertissement;
                <br />
                Être coupable d’actes violents;
                <br />
                Mentir ou induire en erreur un officiel du tournoi.
                          

            <br />
            <h3><strong>Actions punissables</strong></h3>
            <br />

                    <p>Les actions suivantes provoques la défaite instantanée de la manche ou du match, selon le cas:</p>

                    <br />
                    Un joueur ne peut pas désamorcer une bombe à travers un objet solide. Par exemple: désamorcer à travers un mur.
                    <br />
                    Un joueur ne peut pas poser la bombe dans une position où l'autre équipe ne peut la désamorcer.
                    <br />
                    Un joueur ne peut pas se "booster" à travers un mur.
                    <br />
                    Un joueur ne peut pas exploiter une faille dans une carte.
                    <br />
                    Les bombes doivent toutes être posées à un endroit où les deux équipes peuvent l'entendre.
                    <br />
                    Les deux équipes doivent se respecter durant les parties.
                    <br />
                    Les noms des joueurs et des équipes doivent être éthiquement corrects.
                    <br />
                    Les équipes doivent absolument avoir 5 joueurs, sinon l'équipe sera disqualifiée.
                    <br />
                    Un joueur ne peut pas utiliser de script, quel qu'il soit.
                    <br />
                    Un joueur ne peut pas utiliser quelque chose qui lui donne un avantage sur les autres.
                 

             <br />
             <h3><strong>Cas spéciaux</strong></h3>
             <br />
                    <p>Advenant le cas où une personne se déconnecte non intentionnellement pendant une manche, la manche continue. Une pause après cette manche sera faite pour attendre que le joueur se reconnecte à la partie.</p>
    </div>
  

</asp:Content>
