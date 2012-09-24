<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="utb" scope="page" class="com.ibm.btt.cs.html.DSEJspContextServices">
	<%
		utb.initialize(request);			  
	%>
</jsp:useBean>	
<html>
<!-- Generated from TreeAlignment.xui by ghost, on Sat Sep 22 20:14:51 CST 2012 -->
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
  <table id="TreeAlignment_panel">
    <tr>
      <td valign="top">
        <bttdojo:form id="TreeAlignment_form" errorPage="TreeAlignment.jsp">
          <table id="TreeAlignment_form">
            <tr>
              <td>
                <bttdojo:button id="TreeAlignment_button" type="submit" text="homepage" flowEvent="homepage"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:label id="TreeAlignment_label" text="Horizaontal"/>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:tree id="TreeAlignment_tree_copy03_copy" dataNameForTreeContent="root"/>
              </td>
            </tr>
            <tr>
              <td align="center" valign="top">
                <table><tr><td align="left">
                  <bttdojo:tree id="TreeAlignment_tree_copy03_copy_copy" dataNameForTreeContent="root"/>
                </td></tr></table>
              </td>
            </tr>
            <tr>
              <td align="right" valign="bottom">
                <table><tr><td align="left">
                  <bttdojo:tree id="TreeAlignment_tree_copy03_copy_copy_copy" dataNameForTreeContent="root"/>
                </td></tr></table>
              </td>
            </tr>
            <tr>
              <td>
                <bttdojo:label id="TreeAlignment_label01" text="TabbedPane"/>
              </td>
            </tr>
            <tr>
              <td valign="top">
                <bttdojo:tabbedpane id="TreeAlignment_tabbedPane">
                  <bttdojo:contentpane id="TreeAlignment_ContentPane01" title="Tab01">
                    <table id="TreeAlignment_ContentPane01" style="table-layout:fixed">
                      <tr>
                        <td valign="top">
                            <table id="TreeAlignment_panel02">
                              <tr>
                                <td valign="top">
                                  <bttdojo:tree id="TreeAlignment_tree" dataNameForTreeContent="root"/>
                                </td>
                              </tr>
                            </table>
                        </td>
                        <td valign="top">
                            <table id="TreeAlignment_panel03">
                              <tr>
                                <td>
                                  <bttdojo:tree id="TreeAlignment_tree_copy04" dataNameForTreeContent="root"/>
                                </td>
                              </tr>
                            </table>
                        </td>
                        <td valign="top">
                            <table id="TreeAlignment_panel04">
                              <tr>
                                <td valign="bottom">
                                  <bttdojo:tree id="TreeAlignment_tree_copy05" dataNameForTreeContent="root"/>
                                </td>
                              </tr>
                            </table>
                        </td>
                      </tr>
                      <tr>
                        <td valign="top">
                            <table id="TreeAlignment_panel01">
                              <tr>
                                <td>
                                </td>
                                <td>
                                </td>
                              </tr>
                            </table>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeAlignment_ContentPane02" title="Tab02">
                    <table id="TreeAlignment_ContentPane02" style="table-layout:fixed">
                      <tr>
                        <td align="center">
                          <table><tr><td align="left">
                            <bttdojo:tree id="TreeAlignment_tree_copy" dataNameForTreeContent="root"/>
                          </td></tr></table>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeAlignment_ContentPane03" title="Tab03">
                    <table id="TreeAlignment_ContentPane03" style="table-layout:fixed">
                      <tr>
                        <td align="right">
                          <table><tr><td align="left">
                            <bttdojo:tree id="TreeAlignment_tree_copy01" dataNameForTreeContent="root"/>
                          </td></tr></table>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeAlignment_ContentPane04" title="Tab04">
                    <table id="TreeAlignment_ContentPane04" style="table-layout:fixed">
                      <tr>
                        <td valign="top">
                          <bttdojo:tree id="TreeAlignment_tree_copy02" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeAlignment_ContentPane05" title="Tab05">
                    <table id="TreeAlignment_ContentPane05" style="table-layout:fixed">
                      <tr>
                        <td>
                          <bttdojo:tree id="TreeAlignment_tree_copy03" dataNameForTreeContent="root"/>
                        </td>
                      </tr>
                    </table>
                  </bttdojo:contentpane>
                  <bttdojo:contentpane id="TreeAlignment_ContentPane06" title="Tab06">
                    <table id="TreeAlignment_ContentPane06" style="table-layout:fixed">
                      <tr>
                        <td align="right" valign="bottom">
                          <table><tr><td align="left">
                            <bttdojo:tree id="TreeAlignment_tree_copy03_copy_copy01" dataNameForTreeContent="root"/>
                          </td></tr></table>
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