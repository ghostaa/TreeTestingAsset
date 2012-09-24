<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="utb" scope="page" class="com.ibm.btt.cs.html.DSEJspContextServices">
	<%
		utb.initialize(request);			  
	%>
</jsp:useBean>	
<html>
<!-- Generated from BP31707.xui by ghost, on Sat Sep 22 17:22:05 CST 2012 -->
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
		isDebug: false, 
		parseOnLoad: true
	};
</script>

<script type="text/javascript" src="js/dojo/dojo_BTT.js" ></script>
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
<script type="text/javascript" src="<%=JSPUtil.getWebContextRootUrl()%>jsp/BP31707.js"> </script>
  <table id="BP31707_null">
    <tr>
      <td>
        <bttdojo:form id="BP31707_mainForm" flowEvent="REVIEW" errorPage="BP31707.jsp">
          <table id="BP31707_mainForm">
            <tr>
              <td>
                <bttdojo:label id="BP31707_Tree_ModelLabel" text="Tree Model"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:tree id="BP31707_BP31707TreeModel" dataName="BP31707Field" dataNameForTreeContent="root"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:button id="BP31707_button" type="submit" text="REVIEW" flowEvent="REVIEW"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:label id="BP31707_label" text="&nbsp;"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:button id="BP31707_button01" type="submit" text="FINISH" flowEvent="FINISH"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:button id="BP31707_button02" type="button" text="ECA SUBMIT"/>
              </td>
            </tr>
          </table>
        </bttdojo:form>
      </td>
      <td>
        <bttdojo:label id="BP31707_label01" dataName="BP31707Field" text="Label"/>
      </td>
    </tr>
    <tr>
      <td>
        <bttdojo:message id="BP31707_message" dataName="dse_errorMessages"/>
      </td>
      <td>
      </td>
    </tr>
  </table>

</body>
</html>