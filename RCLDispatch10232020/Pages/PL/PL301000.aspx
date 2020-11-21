<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PL301000.aspx.cs" Inherits="Page_PL301000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="PL.PLPickListEntry"
        PrimaryView="PickLists"
        >
		<CallbackCommands>
			<px:PXDSCallbackCommand Name="AddItem" Visible="False" CommitChanges="true" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Name="DeleteButton" Visible="False" CommitChanges="true" ></px:PXDSCallbackCommand>
<px:PXDSCallbackCommand Name="ClaimPickUpItems" Visible="False" CommitChanges="true" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Name="Allocations" Visible="False" CommitChanges="true" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Name="Allocations" Visible="False" CommitChanges="true" /></CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="PickLists" Width="100%" Height="" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXLayoutRule ControlSize="SM" runat="server" ID="CstPXLayoutRule1" StartColumn="True" ></px:PXLayoutRule>
			<px:PXSelector runat="server" ID="CstPXSelector4" DataField="PickListNbr" ></px:PXSelector>
			<px:PXDropDown runat="server" ID="CstPXDropDown11" DataField="Status" CommitChanges="True" ></px:PXDropDown>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule8" ColumnSpan="2" ></px:PXLayoutRule>
			<px:PXTextEdit runat="server" ID="CstPXTextEdit6" DataField="Description" ></px:PXTextEdit>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule2" StartColumn="True" ></px:PXLayoutRule>
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit3" DataField="PickDate" ></px:PXDateTimeEdit>
			<px:PXSelector runat="server" ID="CstPXSelector7" DataField="CreatedByID" ></px:PXSelector>
			<px:PXCheckBox CommitChanges="True" runat="server" ID="CstPXCheckBox12" DataField="MyCheck" ></px:PXCheckBox>
			<px:PXCheckBox CommitChanges="True" runat="server" ID="CstPXCheckBox13" DataField="IsCancelled" ></px:PXCheckBox></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid SyncPosition="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="PickListLines">
			    <Columns>
				<px:PXGridColumn DataField="Selected" Width="60" CommitChanges="True" AllowCheckAll="True" Type="CheckBox" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOLine__RequestDate" Width="90" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Customer__BAccountID" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOOrderType" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn LinkCommand="MySOOrder" DataField="SOOrderNbr" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="InvoiceType" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn LinkCommand="MyInvoice" DataField="InvoiceNbr" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn LinkCommand="MyCustomer" DataField="Customer__AcctCD" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Customer__AcctName" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOOrder__CustomerLocationID" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOOrder__CustomerLocationID_description" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SiteID" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SiteID_description" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn LinkCommand="MyInventory" DataField="InventoryID" Width="280" ></px:PXGridColumn>
				<px:PXGridColumn DataField="INSiteStatusSummary__QtyOnHand" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="PickOpenQty" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOLine__UsrForecastPickQty" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOLine__OpenQty" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Quantity" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOLine__UOM" Width="72" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="PickQty" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn LinkCommand="MyEmployee" CommitChanges="True" DataField="Picker" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn DataField="PickingRemarks" Width="180" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOLine__UsrRemarks" Width="250" />
				<px:PXGridColumn DataField="SOLocationID" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="Vendor" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Vendor_description" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="LocationID" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="ToLocationID" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="PickStatus" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="ShippingType" Width="120" ></px:PXGridColumn>
				<px:PXGridColumn LinkCommand="TransferNbr" DataField="TransferRefNbr" Width="140" ></px:PXGridColumn></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		
			<CustomItems>
				<px:PXToolBarButton>
					<AutoCallBack Target="ds" Command="AddItem" ></AutoCallBack></px:PXToolBarButton>
<px:PXToolBarButton>
          <AutoCallBack Target="ds" Command="ClaimPickUpItems" ></AutoCallBack></px:PXToolBarButton>
        <px:PXToolBarButton>
          <AutoCallBack Target="ds" Command="Allocations" ></AutoCallBack></px:PXToolBarButton></CustomItems></ActionBar>
	</px:PXGrid>
	<px:PXSmartPanel CaptionVisible="True" Caption="Add Items" Height="400" runat="server" ID="CstSmartPanel14" Key="Items" CommandSourceID="ds" AutoCallBack-Command="Refresh" AutoCallBack-Target="CstPXGrid15">
		<px:PXGrid SyncPosition="True" SkinID="Inquire" Height="230" Width="" runat="server" ID="CstPXGrid15">
			<Levels>
				<px:PXGridLevel DataMember="Items" >
					<Columns>
						<px:PXGridColumn CommitChanges="True" Type="CheckBox" AllowCheckAll="True" DataField="UsrSelected" Width="60" ></px:PXGridColumn>
						<px:PXGridColumn DataField="SOOrder__CustomerID_Customer_acctName" Width="220" ></px:PXGridColumn>
						<px:PXGridColumn DataField="SOOrder__OrderType" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="SOOrder__OrderNbr" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="InventoryID_InventoryItem_descr" Width="280" ></px:PXGridColumn>
						<px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
						<px:PXGridColumn DataField="UsrPickListQty" Width="100" ></px:PXGridColumn>
						<px:PXGridColumn DataField="UsrPickListOpenQty" Width="100" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid>
		<px:PXPanel Width="50%" SkinID="Buttons" runat="server" ID="CstPanel16">
			<px:PXButton DialogResult="OK" Text="Ok" runat="server" ID="CstButton17" ></px:PXButton>
			<px:PXButton DialogResult="Cancel" Text="Cancel" runat="server" ID="CstButton18" ></px:PXButton></px:PXPanel></px:PXSmartPanel>
	<px:PXSmartPanel AutoCallBack-Command="Refresh" AutoCallBack-Target="CstPXGrid20" Key="Akatsuki" CommandSourceID="ds" Height="400" CaptionVisible="True" Caption="Claim Pick-Up Items" runat="server" ID="CstSmartPanel19">
		<px:PXGrid SkinID="Inquire" Height="230" runat="server" ID="CstPXGrid20">
<Levels>
				<px:PXGridLevel DataMember="Akatsuki" >
					
					<Columns>
						<px:PXGridColumn CommitChanges="True" Type="CheckBox" DataField="Selected" Width="60" ></px:PXGridColumn>
						<px:PXGridColumn DataField="CustomerID_description" Width="220" ></px:PXGridColumn>
						<px:PXGridColumn DataField="OrderType" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="OrderNbr" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="InvoiceType" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="InvoiceNbr" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="InventoryID_description" Width="280" ></px:PXGridColumn>
						<px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
											<px:PXGridColumn DataField="ClaimQty" Width="100" ></px:PXGridColumn>
											<px:PXGridColumn DataField="CorrectShipment" Width="70" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
			
			<AutoCallBack Enabled="" Target="" Command="" >
							<Behavior RepaintControlsIDs="" ></Behavior></AutoCallBack>
			<AutoCallBack Target="CstPXGrid20" ></AutoCallBack></px:PXGrid>
		<px:PXPanel runat="server" ID="CstPanel21" SkinID="Buttons">
			<px:PXButton CommandSourceID="ds" CommandName="ClaimNow" runat="server" ID="CstButton22" DialogResult="OK" Text="OK" ></px:PXButton>
			<px:PXButton runat="server" ID="CstButton23" DialogResult="Cancel" Text="Cancel" ></px:PXButton></px:PXPanel></px:PXSmartPanel>
	<px:PXSmartPanel AutoCallBack-Target="CstPXGrid25" AutoCallBack-Command="Refresh" runat="server" ID="CstSmartPanel24" Caption="Allocations" CaptionVisible="True" Height="400" Key="pickSplits" CommandSourceID="ds">
		<px:PXGrid AdjustPageSize="Auto" AllowPaging="True" SkinID="Details" Height="230" runat="server" ID="CstPXGrid25">
			<Levels>
				<px:PXGridLevel DataMember="pickSplits" >
					
					<RowTemplate>
											<px:PXSelector runat="server" ID="CstPXSelector28" DataField="LotSerialNbr" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" ></px:PXSelector></RowTemplate>
					<Columns>
						<px:PXGridColumn DataField="LocationID" Width="140" CommitChanges="True" />
						<px:PXGridColumn CommitChanges="True" DataField="LotSerialNbr" Width="220" ></px:PXGridColumn>
						<px:PXGridColumn DataField="Qty" Width="100" CommitChanges="True" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
			<Mode InitNewRow="True" /></px:PXGrid>
		<px:PXPanel runat="server" ID="CstPanel26" SkinID="Buttons">
			<px:PXButton runat="server" ID="CstButton27" DialogResult="OK" Text="OK" ></px:PXButton></px:PXPanel></px:PXSmartPanel></asp:Content>