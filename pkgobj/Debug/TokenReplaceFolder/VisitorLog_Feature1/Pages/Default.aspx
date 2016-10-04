<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register 
    TagPrefix="Utilities" 
    Namespace="Microsoft.SharePoint.Utilities"
    Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register 
    TagPrefix="WebPartPages" 
    Namespace="Microsoft.SharePoint.WebPartPages" 
    Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register 
    TagPrefix="SharePoint" 
    Namespace="Microsoft.SharePoint.WebControls" 
    Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">  
    <!-- Add your JavaScript to the following file -->
    <script type="text/javascript">
        //if (document.location.search != "") {
        //    document.location = "./Default.aspx"
        //}
    </script>

    <meta name="WebPartPageExpansion" content="full" />
    <style type="text/css">
        body {
            visibility: visible;
        }
    </style>
    <!-- Add your CSS styles to the following file -->
    
    <%-- PROD RESOURCES --%>
    <%--<script src="../Content/Compiled/scripts-all.js" type="text/javascript"></script>
    <link href="../Content/Styles/Styles.css"  rel="Stylesheet" type="text/css" />--%>
    
    
    <%-- DEV RESOURCES --%>
    <!-- Add your CSS styles to the following file -->
    <link rel="Stylesheet" type="text/css" href="../Content/Styles/App.css" />
    <link href="../Content/Styles/ratchet/css/ratchet.css" rel="stylesheet" type="text/css">
    <link href="../Content/Styles/css/styles.css" rel="stylesheet" type="text/css">
    <link href="../Content/Styles/css/pageslider.css" rel="stylesheet" type="text/css">

    <!-- Add your JavaScript to the following file -->
    <script src="../Scripts/react.js"></script>
    <script src="../Scripts/react-dom.js"></script>
    <script src="//code.jquery.com/jquery-2.2.4.min.js"></script>

    <%--<script src="../scripts/router.js"></script>
    <script src="../scripts/data-service.js"></script>
    <script type="text/jsx" src="../Scripts/pageslider-react.js"></script>
   --%> 
    <script src="../Scripts/data.js"></script>
    <script src="../Scripts/router.js"></script>

</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <title>Employee Directory</title>
    <div>
        <p></p>
    </div>
     <div id="app"> </div>
    <script src="../Scripts/build/App.js"></script>


</asp:Content>
