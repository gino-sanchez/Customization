<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="DP501040.aspx.cs" Inherits="Page_DP501040" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource PageLoadBehavior="SearchSavedKeys" ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.DispatchLanding"
        PrimaryView="CustomerOrder"
        >
		<CallbackCommands>
			<px:PXDSCallbackCommand Name="ViewCustomer" CommitChanges="True" ></px:PXDSCallbackCommand>
			<px:PXDSCallbackCommand Name="ProcessBtn" Visible="False" CommitChanges="True" ></px:PXDSCallbackCommand></CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="MyFilters" Width="100%" Height="200px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule7" StartColumn="True" ></px:PXLayoutRule>
			<px:PXLayoutRule GroupCaption="Filters" runat="server" ID="CstPXLayoutRule9" StartGroup="True" EndGroup="True" ></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule19" Merge="True" ></px:PXLayoutRule>
			<px:PXDateTimeEdit LabelWidth="150" runat="server" ID="CstPXDateTimeEdit18" DataField="DeliveryDateFrom" CommitChanges="True" ></px:PXDateTimeEdit>
			<px:PXDateTimeEdit LabelWidth="150" runat="server" ID="CstPXDateTimeEdit17" DataField="DeliveryDateTo" CommitChanges="True" ></px:PXDateTimeEdit>
			<px:PXLayoutRule EndGroup="True" Merge="False" runat="server" ID="CstLayoutRule10" ></px:PXLayoutRule>
			<px:PXSelector AutoRefresh="True" AutoComplete="True" FilterByAllFields="True" runat="server" ID="CstPXSelector13" DataField="OrderNbr" CommitChanges="True" ></px:PXSelector>
			<px:PXSelector CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector21" DataField="InvoiceNbr" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector26" DataField="CustomerName" CommitChanges="True" AutoComplete="True" AutoRefresh="True" FilterByAllFields="True" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector27" DataField="CustomerLocationID" CommitChanges="True" AutoComplete="True" AutoRefresh="True" FilterByAllFields="True" />
			<px:PXDropDown CommitChanges="True" runat="server" ID="CstPXDropDown14" DataField="ShippingType" ></px:PXDropDown>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule20" EndGroup="True" ></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule16" StartColumn="True" ></px:PXLayoutRule></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid BatchUpdate="False" AdjustPageSize="Auto" AllowPaging="True" SyncPosition="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Inquire" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="CustomerOrder">
			    <Columns>
				<px:PXGridColumn TextAlign="Center" DataField="Selected" Width="60" CommitChanges="True" Type="CheckBox" AllowCheckAll="True" ></px:PXGridColumn>
				<px:PXGridColumn DataField="OrderType" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn LinkCommand="SOOrderEntry" DataField="OrderNbr" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="ARInvoice__DocType" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn LinkCommand="MyInvoice" DataField="ARInvoice__RefNbr" Width="140" CommitChanges="True" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Status" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="OrderDate" Width="90" ></px:PXGridColumn>
				<px:PXGridColumn DataField="RequestDate" Width="90" ></px:PXGridColumn>
				<px:PXGridColumn DataField="CustomerID" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="CustomerID_BAccountR_acctName" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn DataField="CustomerLocationID" Width="70" />
				<px:PXGridColumn DataField="CustomerLocationID_description" Width="220" />
				<px:PXGridColumn DataField="SOAddress__AddressLine1" Width="180" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOAddress__AddressLine2" Width="180" ></px:PXGridColumn>
				<px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="CuryOrderTotal" Width="100" ></px:PXGridColumn></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
	<px:PXSmartPanel LoadOnDemand="True" Width="1500" CaptionVisible="True" Caption="View Customer Order" AutoCallBack-Enabled="True" AutoCallBack-Target="CstPXGrid2" AutoCallBack-Command="Refresh" runat="server" ID="CstSmartPanel1" CommandSourceID="ds" Height="400" Key="RerouteGrid">
		<px:PXGrid NoteIndicator="True" DataSourceID="ds" Width="100%" runat="server" ID="CstPXGrid2" SkinID="Details" Height="230">
			<Levels>
				<px:PXGridLevel DataMember="RerouteGrid">
					

					<Columns>
											<px:PXGridColumn TextAlign="Center" DataField="Selected" Width="60" AllowCheckAll="True" Type="CheckBox" CommitChanges="True" ></px:PXGridColumn>
											<px:PXGridColumn DataField="OrderType" Width="70" ></px:PXGridColumn>
											<px:PXGridColumn LinkCommand="MyCustomerSOOrder" DataField="OrderNbr" Width="140" ></px:PXGridColumn>
											<px:PXGridColumn DataField="OrderStatus" Width="70" ></px:PXGridColumn>
											<px:PXGridColumn DataField="OrderDate" Width="90" ></px:PXGridColumn>
											<px:PXGridColumn DataField="RequestedDate" Width="90" ></px:PXGridColumn>
											<px:PXGridColumn DataField="ForeCastDate" Width="90" CommitChanges="True" ></px:PXGridColumn>
											<px:PXGridColumn DataField="ForecastConfirmed" Width="60" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
											<px:PXGridColumn CommitChanges="True" DataField="PickQty" Width="100" ></px:PXGridColumn>
						<px:PXGridColumn DataField="CustomerID" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="CustomerName" Width="180" ></px:PXGridColumn>
											<px:PXGridColumn DataField="CustomerLocationID" Width="70" ></px:PXGridColumn>
											<px:PXGridColumn DataField="CustomerLocationID_description" Width="220" ></px:PXGridColumn>
											<px:PXGridColumn DataField="InventoryID" Width="70" ></px:PXGridColumn>
											<px:PXGridColumn DataField="ItemName" Width="280" ></px:PXGridColumn>
											<px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
											<px:PXGridColumn DataField="StockOnHand" Width="100" ></px:PXGridColumn>
											<px:PXGridColumn DataField="ShipmentType" Width="120" ></px:PXGridColumn>
											<px:PXGridColumn CommitChanges="True" DataField="ActionLineItem" Width="120" ></px:PXGridColumn>
						<px:PXGridColumn DataField="DeliveryAddress" Width="220" ></px:PXGridColumn>
											<px:PXGridColumn DataField="RerouteStatus" Width="120" ></px:PXGridColumn>
											<px:PXGridColumn DataField="RequestedType" Width="70" ></px:PXGridColumn>
											<px:PXGridColumn DataField="Warehouse" Width="140" ></px:PXGridColumn>
											<px:PXGridColumn CommitChanges="True" DataField="NewWarehouse" Width="140" ></px:PXGridColumn>
											<px:PXGridColumn DataField="NewWarehouse_description" Width="220" ></px:PXGridColumn>
											<px:PXGridColumn DataField="VendorID" Width="220" ></px:PXGridColumn>
											<px:PXGridColumn DataField="RequestQty" Width="100" CommitChanges="True" ></px:PXGridColumn></Columns>
					<RowTemplate>
						<px:PXSegmentMask runat="server" ID="CstPXSegmentMask22" DataField="NewWarehouse" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" AutoComplete="True" ></px:PXSegmentMask>
						<px:PXSelector runat="server" ID="CstPXSelector24" DataField="VendorID" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" ></px:PXSelector>
						<px:PXSelector CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector25" DataField="Picker" ></px:PXSelector></RowTemplate></px:PXGridLevel></Levels>
			<AutoCallBack Command="Refresh" ></AutoCallBack></px:PXGrid>
		<px:PXPanel runat="server" ID="CstPanel3" SkinID="Buttons">
			<px:PXButton runat="server" ID="CstButton23" CommandSourceID="ds" CommandName="ProcessBtn" />
			<px:PXButton DialogResult="Cancel" Text="Cancel" runat="server" ID="CstButton5" ></px:PXButton></px:PXPanel></px:PXSmartPanel></asp:Content>