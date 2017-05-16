<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CO5027_iCourt._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <div id="banner"></div>
    <p>iCourt offers a rental of an indoor court for a variety of sports. It makes it easier for the users to book the court at any devices anywhere anytime. Secure your court by placing your booking now!  </p>
    <div id="Facilities" class="tabContent">
        <table class="product_tbl">
            <tr>
                <td>
                    <div class="img_box">
                        <a href="productdetails.aspx">
                            <asp:Image ID="badminton" runat="server" ImageUrl="~/Images/facilities/badminton.jpg" alt="badminton" /></a>
                    </div>
                    <h4>BADMINTON COURT</h4>
                    <p class="price">$10/hour</p>
                </td>
                <td>
                    <div class="img_box">
                        <a href="productdetails.aspx">
                            <asp:Image ID="basketball" runat="server" ImageUrl="Images/facilities/basketball.jpg" alt="basketball" /></a>
                    </div>
                    <h4>BASKETBALL COURT</h4>
                    <p class="price">$20/hour</p>
                </td>
                <td>
                    <div class="img_box">
                        <a href="productdetails.aspx">
                            <asp:Image ID="netball" runat="server" ImageUrl="Images/facilities/netball.jpg" alt="netball" /></a>
                    </div>
                    <h4>NETBALL COURT</h4>
                    <p class="price">$20/hour</p>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="img_box">
                        <a href="productdetails.aspx">
                            <asp:Image ID="volleyball" runat="server" ImageUrl="Images/facilities/volley.jpg" alt="volleyball" /></a>
                    </div>
                    <h4>VOLLEYBALL COURT</h4>
                    <p class="price">$10/hour</p>
                </td>
                <td>
                    <div class="img_box">
                        <a href="productdetails.aspx">
                            <asp:Image ID="dodgeball" runat="server" ImageUrl="Images/facilities/dodgeball.jpg" alt="dodgeball" /></a>
                    </div>
                    <h4>DODGEBALL COURT</h4>
                    <p class="price">$10/hour</p>
                </td>
                <td>
                    <div class="img_box">
                        <a href="productdetails.aspx">
                            <asp:Image ID="futsal" runat="server" ImageUrl="Images/facilities/futsal.jpg" alt="futsal" /></a>
                    </div>
                    <h4>FUTSAL COURT</h4>
                    <p class="price">$30/hour</p>
                </td>
            </tr>
        </table>
    </div>

    <div id="bookFacilities" class="tabContent">
        <form runat="server">
            <h1>Book now!</h1>
            <asp:Label AssociatedControlID="ddlFacilities" ID="lblFacilities" runat="server" Text="Type of Facility"></asp:Label>
            <asp:DropDownList ID="ddlFacilities" runat="server" Class="form-control">
                <asp:ListItem Enabled="true" Text="Select Facility" Value="0"></asp:ListItem>
                <asp:ListItem Text="Badminton Court" Value="1"></asp:ListItem>
                <asp:ListItem Text="Basketball Court" Value="2"></asp:ListItem>
                <asp:ListItem Text="Dodgeball Court" Value="3"></asp:ListItem>
                <asp:ListItem Text="Futsal Court" Value="4"></asp:ListItem>
                <asp:ListItem Text="Netball Court" Value="5"></asp:ListItem>
                <asp:ListItem Text="Volleyball Court" Value="6"></asp:ListItem>
            </asp:DropDownList>

            <asp:Label AssociatedControlID="txtStartDate" ID="lblStartDate" runat="server" Text="Start Date"></asp:Label>
            <asp:TextBox TextMode="Date" ID="txtStartDate" runat="server"></asp:TextBox>
            
            <asp:Label AssociatedControlID="txtEndDate" ID="lblEndDate" runat="server" Text="End Date"></asp:Label>
            <asp:TextBox TextMode="Date" ID="txtEndDate" runat="server"></asp:TextBox>
            
            <asp:Label AssociatedControlID="txtStartTime" ID="lblStartTime" runat="server" Text="Start Time"></asp:Label>
            <asp:TextBox TextMode="Time" ID="txtStartTime" runat="server"></asp:TextBox>
            
            <asp:Label AssociatedControlID="txtEndTime" ID="lblEndTime" runat="server" Text="End Time"></asp:Label>
            <asp:TextBox TextMode="Time" ID="txtEndTime" runat="server"></asp:TextBox>
            
            <asp:Button ID="btnBook" runat="server" Text="Book now" CssClass="submit" OnClick="BtnBook_Click" />
        </form>
    </div>
</asp:Content>
