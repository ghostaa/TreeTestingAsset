<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="utb" scope="page" class="com.ibm.btt.cs.html.DSEJspContextServices">
	<%
		utb.initialize(request);			  
	%>
</jsp:useBean>	
<html>
<!-- Generated from TreeSize.xui by ghost, on Sat Sep 22 20:11:56 CST 2012 -->
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
  <table id="TreeSize_panel">
    <tr>
      <td valign="top">
        <bttdojo:form id="TreeSize_form" errorPage="TreeSize.jsp">
          <table id="TreeSize_form">
            <tr>
              <td>
                <bttdojo:button id="TreeSize_button" type="submit" text="homepage" flowEvent="homepage"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:label id="TreeSize_label" text="Group auto size"/>
              </td>
            </tr>
            <tr>
              <td valign="top">
                <bttdojo:group id="TreeSize_group" text="Group">
                  <table id="TreeSize_group">
                    <tr>
                      <td>
                        <bttdojo:tree id="TreeSize_tree_copy03_copy_copy" dataNameForTreeContent="root"/>
                      </td>
                    </tr>
                  </table>
                </bttdojo:group>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:label id="TreeSize_label_copy" text="Group set size" width="92" textWrap="false"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:group id="TreeSize_group01" text="Group" width="100" height="100" textWrap="false">
                  <table style="width:100px;height:100px;" id="TreeSize_group01">
                    <tr>
                      <td>
                        <bttdojo:tree id="TreeSize_tree_copy03_copy" dataNameForTreeContent="root"/>
                      </td>
                    </tr>
                  </table>
                </bttdojo:group>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:label id="TreeSize_label01" text="TabbedPane auto size"/>
              </td>
            </tr>
            <tr>
              <td valign="top">
                <bttdojo:tabbedpane id="TreeSize_tabbedPane">
                  <bttdojo:contentpane id="TreeSize_ContentPane01" title="Tab01">
                    <table id="TreeSize_ContentPane01" style="table-layout:fixed">
                      <tr>
                        <td>
                          <bttdojo:tree id="TreeSize_tree" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeSize_ContentPane02" title="Tab02">
                    <table id="TreeSize_ContentPane02" style="table-layout:fixed">
                      <tr>
                        <td>
                          <bttdojo:tree id="TreeSize_tree_copy" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeSize_ContentPane03" title="Tab03">
                    <table id="TreeSize_ContentPane03" style="table-layout:fixed">
                      <tr>
                        <td>
                          <bttdojo:tree id="TreeSize_tree_copy01" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeSize_ContentPane04" title="Tab04">
                    <table id="TreeSize_ContentPane04" style="table-layout:fixed">
                      <tr>
                        <td>
                          <bttdojo:tree id="TreeSize_tree_copy02" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeSize_ContentPane05" title="Tab05">
                    <table id="TreeSize_ContentPane05" style="table-layout:fixed">
                      <tr>
                        <td>
                          <bttdojo:tree id="TreeSize_tree_copy03" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                </bttdojo:tabbedpane>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:label id="TreeSize_label02" text="TabbedPane set size"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:tabbedpane id="TreeSize_tabbedPane_copy" width="100" height="100" textWrap="false">
                  <bttdojo:contentpane id="TreeSize_ContentPane01_copy" title="Tab01">
                    <table id="TreeSize_ContentPane01_copy" style="table-layout:fixed">
                      <tr>
                        <td>
                          <bttdojo:tree id="TreeSize_tree_copy04" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeSize_ContentPane02_copy" title="Tab02">
                    <table id="TreeSize_ContentPane02_copy" style="table-layout:fixed">
                      <tr>
                        <td>
                          <bttdojo:tree id="TreeSize_tree_copy_copy" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeSize_ContentPane03_copy" title="Tab03">
                    <table id="TreeSize_ContentPane03_copy" style="table-layout:fixed">
                      <tr>
                        <td>
                          <bttdojo:tree id="TreeSize_tree_copy01_copy" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeSize_ContentPane04_copy" title="Tab04">
                    <table id="TreeSize_ContentPane04_copy" style="table-layout:fixed">
                      <tr>
                        <td>
                          <bttdojo:tree id="TreeSize_tree_copy02_copy" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeSize_ContentPane05_copy" title="Tab05">
                    <table id="TreeSize_ContentPane05_copy" style="table-layout:fixed">
                      <tr>
                        <td>
                          <bttdojo:tree id="TreeSize_tree_copy03_copy01" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                </bttdojo:tabbedpane>
              </td>
            </tr>
          </table>
        </bttdojo:form>
      </td>
    </tr>
  </table>

</body>
</html>