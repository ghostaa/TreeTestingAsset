<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="utb" scope="page" class="com.ibm.btt.cs.html.DSEJspContextServices">
	<%
		utb.initialize(request);			  
	%>
</jsp:useBean>	
<html>
<!-- Generated from TreeCSS.xui by ghost, on Tue Jan 29 16:25:38 CST 2013 -->
<head>
<%@ taglib uri="/WEB-INF/bttdojo.tld" prefix="bttdojo"%>
<%@ page import="com.ibm.btt.cs.html.JSPUtil" %> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<style type="text/css">
@import "js/dojo/resources/dojo.css";
@import "js/dijit/themes/claro/claro.css";		
@import "js/dojox/grid/enhanced/resources/claro/EnhancedGrid.css";
@import "css/dijit/message.css";
@import "js/com/ibm/btt/dijit/templates/FileUpload.css";
@import "js/dijit/themes/claro/document.css";
@import "js/com/ibm/btt/dijit/templates/Grid.css";
@import "js/com/ibm/btt/dijit/templates/ScreenCover.css";
@import "js/com/ibm/btt/dijit/templates/Group.css";
@import "js/com/ibm/btt/dijit/templates/Label.css";
@import "css/tree.css";

.dojoxGrid table { margin: 0; }
.dj_gecko .dijitTextBoxReadOnly INPUT.dijitInputInner {
    -moz-user-input: auto;
}
.dj_gecko .dijitTextBoxReadOnlyFocused INPUT.dijitInputInner {
	-moz-user-input: none;
}
</style>
<script>
	var djConfig =  {
		baseUrl:"js/dojo/",
		<bttdojo:locale/>,
		isDebug: true, 
		parseOnLoad: true
	};
</script>
<script type="text/javascript" src="js/dojo/dojo_BTT.js"></script>
<script type="text/javascript" src="js/com/ibm/btt/btt.js"></script>
<script type="text/javascript" >
dojo.addOnLoad(function(){
	dojo.style(document.body, "visibility", "");
});
</script>

<script type="text/javascript">
	if(!window.engine){
		<%if(utb.ajaxNavigationEnabled()){%>
			window.engine = new com.ibm.btt.event.NavigationEngine();
		<%}else{%>
			window.engine = new com.ibm.btt.event.Engine();
		<%}%>
		engine.setMonitor(new com.ibm.btt.event.BaseMonitor());
		engine.registerCond("js/condition/condition.js");
	}
</script>
</head>
<body class="claro" style="visibility:hidden">
  <table id="TreeCSS_panel">
    <tr>
      <td style="text-align:left;vertical-align:top;">
        <bttdojo:form id="TreeCSS_form" errorPage="TreeCSS.jsp">
          <table>
            <tr>
              <td style="text-align:left;vertical-align:middle;">
                <bttdojo:button id="TreeCSS_button" type="submit" text="homepage" flowEvent="homepage"/>
              </td>
            </tr>
            <tr>
              <td style="text-align:left;vertical-align:top;">
                <bttdojo:group id="TreeCSS_group" text="Group">
                  <table>
                    <tr>
                      <td style="text-align:left;vertical-align:middle;">
<div style="display:inline-block;" class="treeStyle">                        <bttdojo:tree id="TreeCSS_tree" dataNameForTreeContent="root"/>
</div>                      </td>
                    </tr>
                  </table>
                </bttdojo:group>
              </td>
            </tr>
            <tr>
              <td style="text-align:left;vertical-align:top;">
                <bttdojo:group id="TreeCSS_group01" text="Group">
                  <table>
                    <tr>
                      <td style="text-align:left;vertical-align:middle;">
                        <bttdojo:tree id="TreeCSS_tree_copy" dataNameForTreeContent="root"/>
                      </td>
                    </tr>
                  </table>
                </bttdojo:group>
              </td>
            </tr>
          </table>
        </bttdojo:form>
      </td>
    </tr>
  </table>

</body>
</html>