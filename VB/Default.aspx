﻿<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApplication18.Default" %>

<%@ Register Assembly="DevExpress.Dashboard.v17.1.Web, Version=17.1.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.DashboardWeb" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>

	<script type="text/javascript">
		function onBeforeRender(s, e) {
			var dashboardControl = s.getDashboardControl();
			dashboardControl.registerExtension(registerCustomDashboardGrid(dashboardControl));
		}
	</script>

</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxDashboard ID="ASPxDashboardDesigner1" ClientInstanceName="webDashboard" runat="server" UseDashboardConfigurator="true">
				<ClientSideEvents BeforeRender="onBeforeRender" />
			</dx:ASPxDashboard>

			<script src="Scripts/CustomDashboardGrid/meta.js"></script>
			<script src="Scripts/CustomDashboardGrid/viewer.js"></script>
			<script src="Scripts/CustomDashboardGrid/CustomGrid.js"></script>
		</div>
	</form>
</body>
</html>