<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PL501000.aspx.cs" Inherits="Page_PL501000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="PL.PLPickListProcess"
        PrimaryView="LineFilter"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="LineFilter" Width="100%" Height="" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule38" StartRow="True" ></px:PXLayoutRule>
			<px:PXLayoutRule ControlSize="M" LabelsWidth="M" ColumnWidth="" runat="server" ID="CstPXLayoutRule42" StartColumn="True" ></px:PXLayoutRule>
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit71" DataField="RequestedDateFrom" CommitChanges="True" />
			<px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit28" DataField="DateFrom" ></px:PXDateTimeEdit>
			<px:PXSelector FilterByAllFields="True" runat="server" ID="CstPXSelector50" DataField="OrderNbr" CommitChanges="True" AutoRefresh="True" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector51" DataField="myInvoice" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector54" DataField="CustomerID" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" AutoComplete="True" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector67" DataField="CustomerLocationID" CommitChanges="True" AutoComplete="True" AutoRefresh="True" FilterByAllFields="True" ></px:PXSelector>
			<px:PXDropDown CommitChanges="True" runat="server" ID="CstPXDropDown58" DataField="Status" ></px:PXDropDown>
			<px:PXSegmentMask AutoRefresh="True" FilterByAllFields="True" CommitChanges="True" runat="server" ID="CstPXSegmentMask35" DataField="SalesEmployee" ></px:PXSegmentMask>
			<px:PXSelector AutoRefresh="True" FilterByAllFields="True" CommitChanges="True" runat="server" ID="CstPXSelector37" DataField="Vendor" ></px:PXSelector>
			<px:PXSegmentMask AutoComplete="True" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSegmentMask53" DataField="SiteID" ></px:PXSegmentMask>
			<px:PXSegmentMask AutoRefresh="True" FilterByAllFields="True" AutoComplete="True" runat="server" ID="CstPXSegmentMask52" DataField="BranchID" CommitChanges="True" ></px:PXSegmentMask>
			<px:PXLayoutRule LabelsWidth="M" ControlSize="M" runat="server" ID="CstPXLayoutRule43" StartColumn="True" ></px:PXLayoutRule>
			<px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit57" DataField="RequestedDateTo" ></px:PXDateTimeEdit>
			<px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit29" DataField="DateTo" ></px:PXDateTimeEdit></Template>
	
		<ContentLayout AutoSizeControls="True" ></ContentLayout></px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid AllowSearch="True" RepaintColumns="" BatchUpdate="True" Caption="SOOrders" AdjustPageSize="Auto" AllowPaging="True" SyncPosition="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="" SkinID="PrimaryInquire" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="SOOrders">
			    <Columns>
				<px:PXGridColumn AllowCheckAll="True" DataField="UsrSelected" Width="60" CommitChanges="True" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOOrder__CustomerID" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOOrder__CustomerID_BAccountR_acctName" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOOrder__CustomerLocationID" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOOrder__CustomerLocationID_description" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SiteID" Width="140" />
				<px:PXGridColumn DataField="SiteID_description" Width="220" />
				<px:PXGridColumn DataField="RequestDate" Width="90" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOOrder__OrderType" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn LinkCommand="MySOLink" DataField="SOOrder__OrderNbr" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="UsrForecastPickQty" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="LocationID" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOOrder__Status" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="ARInvoice__DocType" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn LinkCommand="MyInvoice" DataField="ARInvoice__RefNbr" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOOrder__OrderQty" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SOOrder__UsrBalanceQty" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="ARInvoice__Status" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="UsrAvailableQty" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SalesPersonID" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SalesPersonID_description" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn DataField="VendorID" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="VendorID_BAccountR_acctName" Width="220" ></px:PXGridColumn></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		</ActionBar>
	
		<OnChangeCommand Target="" Command="" >
				<Behavior RepaintControlsIDs="" ></Behavior></OnChangeCommand>
		<OnChangeCommand Target="grid" ></OnChangeCommand>
		<AutoCallBack Command="Refresh" ></AutoCallBack></px:PXGrid>
</asp:Content>