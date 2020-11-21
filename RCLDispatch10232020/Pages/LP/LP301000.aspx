<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormTab.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="LP301000.aspx.cs" Inherits="Page_LP301000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormTab.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.LoadPlanTicketEntry"
        PrimaryView="LoadPlanMaster"
        >
		<CallbackCommands>
			<px:PXDSCallbackCommand Name="LoadItem" Visible="False" CommitChanges="true" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Name="ReAssignItems" Visible="False" CommitChanges="true" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand DependOnGrid="CstPXGrid1" Name="Allocations" Visible="False" CommitChanges="true" ></px:PXDSCallbackCommand></CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="LoadPlanMaster" Width="100%" Height="" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXSelector runat="server" ID="CstPXSelector6" DataField="TripTIcketNbr" ></px:PXSelector>
			<px:PXDropDown runat="server" ID="CstPXDropDown14" DataField="LoadStatus" ></px:PXDropDown>
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit10" DataField="DocDate" ></px:PXDateTimeEdit>
			<px:PXTextEdit CommitChanges="True" runat="server" ID="CstPXTextEdit45" DataField="Zone" ></px:PXTextEdit>
			<px:PXCheckBox runat="server" ID="CstPXCheckBox27" DataField="IsConfirmed" ></px:PXCheckBox>
			<px:PXCheckBox runat="server" ID="CstPXCheckBox26" DataField="IsCancelled" ></px:PXCheckBox>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule11" StartColumn="True" ></px:PXLayoutRule>
			<px:PXSelector runat="server" ID="CstPXSelector51" DataField="TruckID" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" ></px:PXSelector>
			<px:PXSelector AutoComplete="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector52" DataField="DriverName" CommitChanges="True" ></px:PXSelector>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule12" StartColumn="True" ></px:PXLayoutRule>
			<px:PXNumberEdit runat="server" ID="CstPXNumberEdit7" DataField="TruckCapacityCBM" ></px:PXNumberEdit>
			<px:PXNumberEdit runat="server" ID="CstPXNumberEdit8" DataField="TruckCapacityKGS" ></px:PXNumberEdit>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule13" StartColumn="True" ></px:PXLayoutRule>
			<px:PXNumberEdit runat="server" ID="CstPXNumberEdit4" DataField="TotalLoadCBM" ></px:PXNumberEdit>
			<px:PXNumberEdit runat="server" ID="CstPXNumberEdit5" DataField="TotalLoadKGS" ></px:PXNumberEdit>
			<px:PXNumberEdit runat="server" ID="CstPXNumberEdit25" DataField="ExcessTruckKGS" ></px:PXNumberEdit></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXTab ID="tab" runat="server" Width="100%" Height="150px" DataSourceID="ds" AllowAutoHide="false">
		<Items>
			<px:PXTabItem Text="Load Items">
				<Template>
					<px:PXGrid SyncPosition="True" Height="150px" Width="100%" SkinID="Details" runat="server" ID="CstPXGrid1">
						<Levels>
							<px:PXGridLevel DataMember="LoadPlanLine" >
								<Columns>
									<px:PXGridColumn DataField="Zone" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="OldTripTicketNbr" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn Visible="False" DataField="TripTicketNbr" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="SOOrderType" Width="70" Visible="False" ></px:PXGridColumn>
									<px:PXGridColumn LinkCommand="MySOLink" DataField="SOOrderNbr" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="InvoiceType" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn LinkCommand="MySILink" DataField="InvoiceNbr" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn LinkCommand="TransferNbr" DataField="TransferRefNbr" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn LinkCommand="MyShipment" DataField="ShipmentNbr" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn LinkCommand="MyCustomer" DataField="SOOrder__CustomerID" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="SOOrder__CustomerID_BAccountR_acctName" Width="220" ></px:PXGridColumn>
									<px:PXGridColumn DataField="SOOrder__CustomerLocationID" Width="70" />
									<px:PXGridColumn DataField="SOOrder__CustomerLocationID_description" Width="220" />
									<px:PXGridColumn LinkCommand="MyInventory" DataField="SOLine__InventoryID" Width="70" ></px:PXGridColumn>
									<px:PXGridColumn DataField="SOLine__InventoryID_InventoryItem_descr" Width="280" ></px:PXGridColumn>
									<px:PXGridColumn DataField="SOLine__SiteID" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn DataField="SOLine__SiteID_description" Width="220" ></px:PXGridColumn>
									<px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="SOLine__OpenQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn CommitChanges="True" DataField="ItemQty" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn DataField="BufferQty" Width="100" CommitChanges="True" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
						<AutoSize Container="Window" Enabled="True" ></AutoSize>
						<AutoSize MinHeight="100" ></AutoSize>
						<ActionBar>
							<CustomItems>
								<px:PXToolBarButton>
									<AutoCallBack Target="ds" Command="LoadItem" ></AutoCallBack></px:PXToolBarButton>
								<px:PXToolBarButton>
									<AutoCallBack Target="ds" Command="ReAssign" ></AutoCallBack></px:PXToolBarButton>
<px:PXToolBarButton CommandName="">
									<AutoCallBack Target="ds" Command="Allocations" ></AutoCallBack></px:PXToolBarButton></CustomItems></ActionBar>
						<Mode InitNewRow="True" /></px:PXGrid></Template>
			</px:PXTabItem>
			<px:PXTabItem Text="Crews">
				<Template>
					<px:PXGrid Height="150px" SkinID="Details" Width="100%" runat="server" ID="CstPXGrid2">
						<Levels>
							<px:PXGridLevel DataMember="CrewLines" >
								
								<Columns>
									<px:PXGridColumn CommitChanges="True" DataField="Crewid" Width="140" ></px:PXGridColumn>
									<px:PXGridColumn CommitChanges="True" DataField="Crewid_description" Width="220" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
						<AutoSize MinHeight="100" MinWidth="100" Enabled="True" ></AutoSize>
						<AutoSize MinHeight="100" ></AutoSize></px:PXGrid></Template>
			</px:PXTabItem>
		</Items>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
	</px:PXTab>
	<px:PXSmartPanel AutoCallBack-Target="CstPXGrid29" AutoCallBack-Command="Refresh" Width="" CommandSourceID="ds" CaptionVisible="True" Caption="Add Item" Height="400" Key="AddItems" runat="server" ID="CstSmartPanel28">
		<px:PXFormView DataMember="FilterWarehouse" Height="" SkinID="Transparent" runat="server" ID="CstFormView45" >
			<Template>
				<px:PXLayoutRule runat="server" ID="CstPXLayoutRule46" StartRow="True" ></px:PXLayoutRule>
				<px:PXLayoutRule GroupCaption="Filter" runat="server" ID="CstPXLayoutRule48" StartGroup="True" ></px:PXLayoutRule>
				<px:PXSelector runat="server" ID="CstPXSelector47" DataField="MyWarehouse" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" ></px:PXSelector></Template></px:PXFormView>
		<px:PXLayoutRule runat="server" ID="CstLayoutRule49" EndGroup="True" ></px:PXLayoutRule>
		<px:PXGrid Height="240" SkinID="Inquire" runat="server" ID="CstPXGrid29">
			
			<Levels>
				<px:PXGridLevel DataMember="AddItems">
					<Columns>
						<px:PXGridColumn AllowCheckAll="True" TextAlign="Center" DataField="UsrSelected" Width="60" CommitChanges="True" Type="CheckBox" ></px:PXGridColumn>
						<px:PXGridColumn DataField="SOOrder__OrderType" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="SOOrder__OrderNbr" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="SOOrder__CustomerID" Width="140" />
						<px:PXGridColumn DataField="SOOrder__CustomerID_BAccountR_acctName" Width="220" />
						<px:PXGridColumn DataField="SiteID" Width="140" />
						<px:PXGridColumn DataField="OrderQty" Width="100" />
						<px:PXGridColumn DataField="UsrPickListQty" Width="100" />
						<px:PXGridColumn DataField="UnitWeigth" Width="100" />
						<px:PXGridColumn DataField="UnitVolume" Width="100" /></Columns></px:PXGridLevel></Levels></px:PXGrid>
		<px:PXPanel runat="server" ID="CstPanel34" SkinID="Buttons" >
			<px:PXButton CommandName="" CommandSourceID="" runat="server" ID="CstButton35" DialogResult="OK" Text="OK" ></px:PXButton>
			<px:PXButton CommandName="RefreshAction" CommandSourceID="ds" DialogResult="Cancel" Text="Cancel" runat="server" ID="CstButton36" ></px:PXButton></px:PXPanel></px:PXSmartPanel>
	<px:PXSmartPanel AutoCallBack-Target="CstPXGrid40" AutoCallBack-Command="Refresh" Width="" Height="400" CommandSourceID="ds" Key="ToReAssignItems" runat="server" ID="CstSmartPanel39" CaptionVisible="True" Caption="Re Assign Items">
		<px:PXGrid Width="" SkinID="Inquire" Height="240" runat="server" ID="CstPXGrid40">
			<Levels>
				<px:PXGridLevel DataMember="ToReAssignItems" >
					<Columns>
						<px:PXGridColumn Type="CheckBox" AllowCheckAll="True" DataField="Selected" Width="60" CommitChanges="True" ></px:PXGridColumn>
						<px:PXGridColumn DataField="Zone" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="TripTicketNbr" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="SOOrderType" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="SOOrderNbr" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="InvoiceType" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="InvoiceNbr" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="ShipmentNbr" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="CustomerID" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="InventoryID" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="ItemDesc" Width="180" ></px:PXGridColumn>
						<px:PXGridColumn DataField="SiteID" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
						<px:PXGridColumn DataField="ItemQty" Width="100" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid>
		<px:PXPanel SkinID="Buttons" runat="server" ID="CstPanel41">
			<px:PXButton DialogResult="OK" Text="OK" runat="server" ID="CstButton42" ></px:PXButton>
			<px:PXButton DialogResult="Cancel" Text="Cancel" runat="server" ID="CstButton43" ></px:PXButton></px:PXPanel></px:PXSmartPanel>
	<px:PXSmartPanel AutoReload="True" LoadOnDemand="True" AutoCallBack-Target="CstPXGrid58" AutoCallBack-Command="Refresh" runat="server" ID="CstSmartPanel57" Key="loadSplit" CommandSourceID="ds" Height="400" Caption="Allocations" CaptionVisible="True">
		<px:PXGrid SyncPosition="True" runat="server" ID="CstPXGrid58" Height="230" SkinID="Details">
			<Levels>
				<px:PXGridLevel DataMember="loadSplit" >
					<Columns>
						<px:PXGridColumn DataField="LotSerialNbr" Width="180" CommitChanges="True" ></px:PXGridColumn>
						<px:PXGridColumn DataField="Qty" Width="100" CommitChanges="True" /></Columns>
					<RowTemplate>
						<px:PXSelector AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector61" DataField="LotSerialNbr" ></px:PXSelector></RowTemplate></px:PXGridLevel></Levels>
			<Mode InitNewRow="True" ></Mode></px:PXGrid>
		<px:PXPanel runat="server" ID="CstPanel59" SkinID="Buttons">
			<px:PXButton runat="server" ID="CstButton60" DialogResult="OK" Text="OK" ></px:PXButton></px:PXPanel></px:PXSmartPanel></asp:Content>