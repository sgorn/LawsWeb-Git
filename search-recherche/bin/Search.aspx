﻿<%@ Page Language="C#" EnableViewState="false" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="LimsSearch.Search" %>
<!DOCTYPE html>
<!--[if IE 7]> <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
www.tbs.gc.ca/ws-nw/wet-boew/terms / www.sct.gc.ca/ws-nw/wet-boew/conditions -->
<title>Justice Laws Search</title>
<link rel="shortcut icon" href="/build/theme-gcwu-fegc/images/favicon.ico" />
<meta name="description" content="Justice Laws Advanced Search" />
<meta name="keywords" content="Justice Laws Advanced Search" />
<meta name="dcterms.creator" title="Titles of Federal Organizations" content="Department of Justice Canada" />
<meta name="dcterms.title" content="Justice Laws Advanced Search" />
<meta name="dcterms.issued" title="W3CDTF" content="2011-01-01" />
<meta name="dcterms.modified" title="W3CDTF" content="2011-01-01" />
<meta name="dcterms.subject" title="scheme" content="Justice Laws Advanced Search" />
<meta name="dcterms.language" title="ISO639-2" content="eng" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<script src="/build/js/jquery.min.js"></script>
<script src="/js/lims-toggleMenu.js" type="text/javascript"></script>
<!--[if lte IE 8]>
<script src="/build/js/polyfills/html5shiv-min.js"></script>
<link rel="stylesheet" href="/build/grids/css/util-ie-min.css" />
<link rel="stylesheet" href="/build/js/css/pe-ap-ie-min.css" />
<link rel="stylesheet" href="/build/theme-gcwu-fegc/css/theme-ie-min.css" />
<![endif]-->
<!--[if gt IE 8]><!-->
<link rel="stylesheet" href="/build/grids/css/util-min.css" />
<link rel="stylesheet" href="/build/js/css/pe-ap-min.css" />
<link rel="stylesheet" href="/build/theme-gcwu-fegc/css/theme-min.css" />
<!--<![endif]-->

<!-- CustomScriptsCSSStart -->
<link rel="stylesheet" type="text/css" href="/css/search.css" /> 
<link rel="stylesheet" type="text/css" href="/css/categorizedSearch.css" /> 	
<link rel="stylesheet" type="text/css" href="/css/browse.css" />   	
<link rel="stylesheet" type="text/css" href="/css/commonView.css" />   	 
<link rel="stylesheet" type="text/css" href="/css/lawContent.css" />
<link rel="stylesheet" type="text/css" href="/css/privlaw.css" />
<link rel="stylesheet" type="text/css" href="/css/publaw.css" />
<link rel="stylesheet" type="text/css" href="/css/charter.css" />
<!-- CustomScriptsCSSEnd -->
</head>
<body>
<div id="wb-body-sec">
<div id="wb-skip">
<ul id="wb-tphp">
<li id="wb-skip1"><a href="#wb-cont">Skip to main content</a></li>
<li id="wb-skip2"><a href="#wb-nav">Skip to secondary menu</a></li>
</ul>
</div>

<div id="wb-head"><div id="wb-head-in"><header>
<!-- HeaderStart -->
<% Response.WriteFile("/includes/banner-e.inc"); %>
<nav role="navigation">
<% Response.WriteFile("/includes/menubar-e.inc"); %>

<div id="gcwu-bc"><h2>Breadcrumb trail</h2><div id="gcwu-bc-in">
<ol>
<li><a class="breadcrumbs" href="http://www.justice.gc.ca/eng">Home</a></li>
<li><a class="breadcrumbs" href="/eng">Laws Website Home</a></li>
<li>Basic Search</li>
</ol>
</div></div>
</nav>
<!-- HeaderEnd -->
</header></div></div>
	
<div id="wb-core"><div id="wb-core-in" class="equalize">
<div id="wb-main" role="main"><div id="wb-main-in">
<!-- MainContentStart -->

<section>
<h1 id="wb-cont" class="searchHeader">Basic Search</h1>
<div>
<form id="form1" runat="server" class="form-horizontal">        
<asp:Panel ID="advancedSearchPanel" runat="server">

<div class="span-2 margin-bottom-medium row-start">
<label for="txtS3archA11" class="searchLabel">Keyword(s):</label></div>
<div class="span-4 margin-bottom-medium row-end"><asp:TextBox ID="txtS3archA11" runat="server" CssClass="width-70"></asp:TextBox></div>
<div class="clear"></div>
<div class="span-2 margin-bottom-medium row-start">
<label for="txtT1tl3" class="searchLabel">Title:</label>
</div>
<div class="span-4 margin-bottom-medium row-end"><asp:TextBox ID="txtT1tl3" runat="server" CssClass="width-70"></asp:TextBox></div>
<div class="clear"></div>
<div class="span-2 margin-bottom-medium row-start">
<label for="ddC0nt3ntTyp3" class="searchLabel">Search in:</label>
</div>
<div class="span-4 margin-bottom-medium row-end">
<asp:DropDownList ID="ddC0nt3ntTyp3" runat="server" CssClass="width-70">
<asp:ListItem Text="Acts and Regulations" Selected="True" Value="ActsRegs"></asp:ListItem>
<asp:ListItem Text="Acts" Value="Statutes"></asp:ListItem>
<asp:ListItem Text="Regulations" Value="Regulations"></asp:ListItem>
<asp:ListItem Text="Annual Statutes" Value="Annuals"></asp:ListItem>
<asp:ListItem Text="Constitution" Value="Constitution"></asp:ListItem>
<asp:ListItem Text="Table of Public Statutes" Value="TOPS"></asp:ListItem>
<asp:ListItem Text="Table of Private Acts" Value="TOPA"></asp:ListItem>
<asp:ListItem Text="Help Pages" Value="Help"></asp:ListItem>
<asp:ListItem Text="Entire site" Value="All"></asp:ListItem>
</asp:DropDownList>
</div>
<div class="clear"></div>
<div class="span-2 margin-bottom-medium row-start">				
</div>
<div class="span-4 margin-bottom-medium row-end">
<asp:CheckBox ID="chkTitlesOnly" runat="server" CssClass="form-checkbox form-label-inline" Text="Show Titles only" />
</div>
</asp:Panel> 
<div class="clear"></div>
<div class="span-2 margin-bottom-medium row-start">				
</div>
<div class="span-4 margin-bottom-medium row-end">
<div class="buttons form-inline">
<p class="button-group">
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Search" class="button button-accent" />
<asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" Text="Clear" class="button" />
</p>    
<asp:HiddenField ID="h1dd3nPag3Num" runat="server" Value="1" />
<asp:HiddenField ID="h1dd3nld" runat="server" Value="0" />
<asp:HiddenField ID="h1tNumb3r" runat="server" Value="0" />
</div>
<div class="searchButtonLinksContainer">
<ul class="HorizontalList">
<li><div class="searchButtonLinks">
<a title="Advanced Search" href="/Search/Advanced.aspx">Advanced Search</a> | </div></li>
<li> <div class="searchButtonLinks">
<a title="Search Help" href="/eng/SearchHelp">Search Help</a></div>
</li>
</ul>
</div>
</div>

<div class="clear"></div>
<div class="hidden" id="bottomPanel" runat="server">
<a href="javascript:;" class="togglemenu">Display / Hide Categories</a>
<div id="results" runat="server" class="hidden">
<asp:Label ID="Label1"  CssClass="totalMatches" runat="server" Text=""></asp:Label>
    <br />
<asp:Label ID="Label2"  CssClass="totalMatches" runat="server" Text=""></asp:Label>
<div runat="server" id="divPhraseMessage" class="hidden"></div>
<div runat="server" id="divPageNav" class="hidden"></div>

<asp:Repeater id="searchResults" runat="server">
<HeaderTemplate>
<hr />
<ol class="wet-boew-zebra resultList">
</HeaderTemplate>
  <ItemTemplate>
	<li class="resultType1">
       <a class="hitTitleLink" href="<%# this.GetHitLink(Container.DataItem) %>">  
       <%# DataBinder.Eval(Container.DataItem, "Document.Title")%> - 
      <%# DataBinder.Eval(Container.DataItem, "Document.OfficialAlphaNumber")%> <%# DataBinder.Eval(Container.DataItem, "Document.Label")%>
      </a>
      <asp:PlaceHolder ID="MoreDetails" runat="server" Visible='<%# ! (this.textIsEmpty || ! this.chkTitlesOnly.Checked) %>'>
      <div class="gotoPageLinks">
       <a class="hitDetailsLink" href="<%# this.GetHitLink(Container.DataItem) %>">
      Go to Page
      </a>
       | 
      <a class="hitDetailsLink" href="<%# this.BuildQueryString(LimsSearch.filterType.ID, Container.ItemIndex, true) %>">
      Show highlighted hits
      </a>
      </div>
      </asp:PlaceHolder>
      
      <asp:PlaceHolder ID="LongTitle" runat="server" Visible='<%# this.txtS3archA11.Text.Trim() == "" %>'>
        <div>
           <%# DataBinder.Eval(Container.DataItem, "Document.LongTitle")%>
        </div>             
      </asp:PlaceHolder>
      <asp:PlaceHolder ID="bar" runat="server" Visible='<%# this.txtS3archA11.Text.Trim() != "" && ! this.chkTitlesOnly.Checked == true %>'>
      <div id="result-container<%# Container.ItemIndex + 1 %>">
<%--      <ul class="tabs">
        <li><a href="#tab<%# (Container.ItemIndex * 2 ) + 1 %>" id="tab<%# (Container.ItemIndex * 2 ) + 1 %>-link">Hits in context</a></li>
        <li><a href="#tab<%# (Container.ItemIndex * 2 ) + 2 %>" id="tab<%# (Container.ItemIndex * 2 ) + 2 %>-link">Full section content</a></li>
      </ul>--%>
      <div class="results-panel">
        <div id="result<%# (Container.ItemIndex * 2 ) + 1 %>">
            <%# DataBinder.Eval(Container.DataItem, "Document.Context")%>
        </div>
<%--        <div id="tab<%# (Container.ItemIndex * 2 ) + 2 %>">
            <p> <%# DataBinder.Eval(Container.DataItem, "Document.Content") %></p>
        </div>--%>
      </div>
      </div>
      <br />
     <%-- <p>Start Date : <%# DataBinder.Eval(Container.DataItem, "Document.InForceStart") %> | End Date : <%# DataBinder.Eval(Container.DataItem, "Document.InForceEnd") %> </p>--%>
	</asp:PlaceHolder></li>
  </ItemTemplate>
  <FooterTemplate>
    </ol>
  </FooterTemplate>
</asp:Repeater>
    <hr />
    <div runat="server" id="divPageNav2" class="hidden"></div>

    </div>
    <div class="rightMenu" id="rightMenu">
         <div id="categories" class="hidden" runat="server">
            <asp:Repeater runat="server" ID="rptContentTypes">
            <HeaderTemplate>
            <h3 class="relatedTerms">Type:</h3>
            <ul></HeaderTemplate>
            <ItemTemplate>
            <li>
                 <a href="<%# this.BuildQueryString(LimsSearch.filterType.LawType, DataBinder.Eval(Container.DataItem, "TypeName"), ! this.chkTitlesOnly.Checked) %>">
              <%# DataBinder.Eval(Container.DataItem, "TypeName")%> 
              (<%# DataBinder.Eval(Container.DataItem, "NumDocs")%>)</a>
                </li>
                </ItemTemplate>
            <FooterTemplate>
            </ul>
            </FooterTemplate>
            </asp:Repeater> 
           <%-- <asp:Repeater ID="rptRelatedTerms" runat="server">
            <HeaderTemplate>
            <p class="relatedTerms">Related phrases: </p>
            <ul></HeaderTemplate>
            <ItemTemplate>
            <li>
              <a href="<%# this.BuildQueryString(LimsSearch.filterType.Related, DataBinder.Eval(Container.DataItem, "Phrase"), this.rdoContext.Checked) %>">
              <%# DataBinder.Eval(Container.DataItem, "Phrase")%> </a>
            </li>
            </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>--%>
             <asp:Repeater runat="server" ID="rptAlphas">
            <HeaderTemplate>
            <h3 class="relatedTerms">Titles:</h3>
            <ul>
            <% Response.Write(this.WriteAllTitlesLink()); %>
            </HeaderTemplate>
            <ItemTemplate>
            <li>
              <a href="<%# this.BuildQueryString(LimsSearch.filterType.LawTitle, DataBinder.Eval(Container.DataItem, "TypeName"), ! this.chkTitlesOnly.Checked) %>">
              <%# DataBinder.Eval(Container.DataItem, "TypeName")%> 
              (<%# DataBinder.Eval(Container.DataItem, "NumDocs")%>)</a>
                </li></ItemTemplate>
            <FooterTemplate>
            </ul>
            </FooterTemplate>
            </asp:Repeater>
        </div>
        </div>
    
    </div> <!-- end of bottomPanel -->
    </form>
    </div>
 </section>
 	 <% Response.WriteFile("/includes/gcwu-date-mod-e.inc"); %>
<div class="clear"></div>
<!-- MainContentEnd -->
</div></div>
 <% Response.WriteFile("/includes/wb-sec-e.inc"); %>
</div></div><!-- End of wb-core -->
 <!--#include virtual="/includes/wb-foot-e.inc" -->

</div>
<!-- ScriptsStart -->
<script src="/build/theme-gcwu-fegc/js/theme-min.js"></script>
<script src="/build/js/settings.js"></script>
<script src="/build/js/pe-ap-min.js"></script>
<!-- ScriptsEnd -->
</body>
</html>