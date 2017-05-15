<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="CO5027_iCourt.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        text-align: center;
    }
    .auto-style2 {
        text-align: center;
        height: 29px;
    }
    .auto-style3 {
        height: 29px;
    }
    .auto-style4 {
        text-align: center;
        height: 31px;
    }
    .auto-style5 {
        height: 31px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">

      <div id="contact_form">
       
        <h3>Contact Us</h3>

	    <form id="form" runat="server">
          
            
	    <table align="center" width ="60%">

        <tr>
        <td class="auto-style4"><strong>Name</strong></td>
        <td class="auto-style5"><asp:TextBox id="senderName" placeholder ="Name" runat="server"/>
                

            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name Required" ControlToValidate="senderName" ForeColor="Red" style="text-align: left"></asp:RequiredFieldValidator>
                

            </td>
        </tr>



        <tr>
        <td class="auto-style2"><strong>Email</strong></td>
        <td class="auto-style3"><asp:TextBox id="senderEmail" placeholder ="Email Address" runat="server"/>
          
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" ControlToValidate="senderEmail" ForeColor="Red" style="text-align: center"></asp:RequiredFieldValidator>
          
            
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="senderEmail" ErrorMessage="Use Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
          
            
        </td>
        </tr>
        


        <tr>
        <td class="auto-style1"><strong>Subject</strong></td>
        <td><asp:TextBox id="subject" placeholder ="Subject" runat="server"/>
           
         
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Subject Required" ControlToValidate="subject" ForeColor="Red" style="text-align: center"></asp:RequiredFieldValidator>
           
         
        </td>
        </tr>

        <tr>
        <td class="auto-style1"><strong>Message</strong></td>
        <td><asp:TextBox id="message" placeholder ="Message" runat="server" Textmode="MultiLine" MaxLength="100" Height="160" Width="285"/>
     


            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Message Required" ControlToValidate="message" ForeColor="Red" style="text-align: center"></asp:RequiredFieldValidator>
     


         <tr>
        <td></td>
         <td>    <asp:Button ID="Send" runat="server" Text="Send" OnClick="Send_Click" />  </td>
        </tr>

        <tr>
        <td></td>
        <td><asp:Label ID="Status" runat="server"/></td>


        </tr>

        </table>

		</form>

    </div>

     
    
        <h3>Address</h3>
        <p>iCourt</p>
        <p>Simpang 98, Jalan Delima</p>
        <p>Kampong Serusop, Bandar Seri Begawan</p>
        <p>Negara Brunei Darussalam</p>

        <br /><br />
        <h3>Map Location</h3>
    
    <div id="googleMap">
       
     
        <script src='https://maps.googleapis.com/maps/api/js?key= AIzaSyDQQZPGioynQP9nZJOietqO0mFs2F9OM3E&v=3.exp'></script>
            <div style='overflow:hidden;height:440px;width:700px;'>
                <div id='gmap_canvas' style='height:440px;width:700px;'></div>
                <div><small><a href="http://embedgooglemaps.com">embed google maps</a></small></div>
                <div><small><a href="https://ultimatewebtraffic.com/">buy website traffic → 100% human traffic | since '04</a></small></div>
               
            </div>

            <script type='text/javascript'>
                function init_map() {
                    var myOptions = {
                        zoom: 16, center: new google.maps.LatLng(4.9473657, 114.94736020000005),
                        mapTypeId: google.maps.MapTypeId.ROADMAP
                    }; map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);
                    marker = new google.maps.Marker(
                        {
                            map: map,
                            position: new google.maps.LatLng(4.9473657, 114.94736020000005)
                        });
                    infowindow = new google.maps.InfoWindow({ content: '<strong>iCourt</strong><br>kg serusop, brunei<br>' }); google.maps.event.addListener(marker, 'click', function () { infowindow.open(map, marker); }); infowindow.open(map, marker);
                } google.maps.event.addDomListener(window, 'load', init_map);

            </script>
        
       
    </div>

</asp:Content>
