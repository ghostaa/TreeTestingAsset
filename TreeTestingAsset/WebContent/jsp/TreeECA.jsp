<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="utb" scope="page" class="com.ibm.btt.cs.html.DSEJspContextServices">
	<%
		utb.initialize(request);			  
	%>
</jsp:useBean>	
<html>
<!-- Generated from TreeECA.xui by ghost, on Sat Sep 22 20:34:29 CST 2012 -->
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
<script type="text/javascript" src="<%=JSPUtil.getWebContextRootUrl()%>jsp/TreeECA.js"> </script>
  <table id="TreeECA_panel">
    <tr>
      <td valign="top">
        <bttdojo:form id="TreeECA_form" errorPage="TreeECA.jsp">
          <table id="TreeECA_form">
            <tr>
              <td>
                <bttdojo:button id="TreeECA_button" type="submit" text="homepage" flowEvent="homepage"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:tree id="TreeECA_tree" dataNameForTreeContent="root"/>
              </td>
            </tr>
            <tr>
              <td valign="top">
                  <table id="TreeECA_panel01">
                    <tr>
                      <td>
                        <bttdojo:button id="TreeECA_visible" type="button" text="visible"/>
                      </td>
                      <td>
                        <bttdojo:button id="TreeECA_hidden" type="button" text="hidden"/>
                      </td>
                      <td>
                        <bttdojo:button id="TreeECA_gone" type="button" text="gone"/>
                      </td>
                    </tr>
                  </table>
              </td>
            </tr>
            <tr>
              <td>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:button id="TreeECA_verify tree id" type="button" text="verify tree id"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:button id="TreeECA_get tree id" type="button" text="get tree id"/>
              </td>
            </tr>
          </table>
        </bttdojo:form>
      </td>
    </tr>
    <tr>
      <td>
        <bttdojo:message id="TreeECA_message" dataName="dse_errorMessages"/>
      </td>
    </tr>
  </table>

</body>
</html>