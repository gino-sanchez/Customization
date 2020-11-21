<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="SC500000.aspx.cs" Inherits="Page_SC500000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.ServiceCallProcessing"
        PrimaryView="Filters"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="Filters" Width="100%" Height="" AllowAutoHide="false">
    <Template>
      <px:PXLayoutRule runat="server" StartRow="True" ID="PXLayoutRule1" ></px:PXLayoutRule>
      <px:PXLayoutRule runat="server" ID="CstPXLayoutRule1" StartColumn="True" ></px:PXLayoutRule>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit27" DataField="DateFrom" CommitChanges="True" />
	<px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit24" DataField="InvoiceDateFrom" ></px:PXDateTimeEdit>
	<px:PXSelector runat="server" ID="CstPXSelector19" DataField="CustomerName" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" ></px:PXSelector>
	<px:PXSelector runat="server" ID="CstPXSelector20" DataField="OrderNbr" CommitChanges="True" AutoComplete="True" AutoRefresh="True" ></px:PXSelector>
	
	<px:PXSelector AutoRefresh="True" FilterByAllFields="True" AutoComplete="True" CommitChanges="True" runat="server" ID="CstPXSelector23" DataField="InvoiceNo" ></px:PXSelector>
	<px:PXDropDown CommitChanges="True" runat="server" ID="CstPXDropDown21" DataField="FilterByAction" ></px:PXDropDown>
      <px:PXLayoutRule runat="server" ID="CstPXLayoutRule2" StartColumn="True" ></px:PXLayoutRule>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit26" DataField="DateTo" CommitChanges="True" ></px:PXDateTimeEdit>
	<px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit25" DataField="InvoiceDateTo" ></px:PXDateTimeEdit></Template>
  </px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
  <px:PXGrid AdjustPageSize="Auto" AllowPaging="True" Caption="Customers" BatchUpdate="True" AutoRepaint="True" SyncPosition="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="PrimaryInquire" AllowAutoHide="false">
    <Levels>
      <px:PXGridLevel DataMember="ProcessingGrid">
          <Columns>
	<px:PXGridColumn DataField="Selected" Width="70" CommitChanges="True" Type="CheckBox" AllowCheckAll="True" />
	<px:PXGridColumn DataField="CustomerID_description" Width="220" ></px:PXGridColumn>
        <px:PXGridColumn DataField="TranDate" Width="90" ></px:PXGridColumn>
        <px:PXGridColumn DataField="OrderType" Width="70" ></px:PXGridColumn>
        <px:PXGridColumn LinkCommand="MySOOrder" DataField="OrderNbr" Width="140" ></px:PXGridColumn>
	<px:PXGridColumn LinkCommand="MySI" DataField="RefNbr" Width="140" ></px:PXGridColumn>
	<px:PXGridColumn DataField="DocType" Width="70" ></px:PXGridColumn>
	<px:PXGridColumn DataField="QtyAvail" Width="100" ></px:PXGridColumn>
        <px:PXGridColumn DataField="Phone1" Width="180" ></px:PXGridColumn>
        <px:PXGridColumn DataField="Phone2" Width="180" ></px:PXGridColumn>
        <px:PXGridColumn DataField="RequestedOn" Width="90" ></px:PXGridColumn>
        <px:PXGridColumn CommitChanges="True" DataField="UsrForecastDate" Width="90" ></px:PXGridColumn>
	<px:PXGridColumn DataField="ShippingType" Width="70" ></px:PXGridColumn>
        <px:PXGridColumn DataField="UsrRemarks" Width="220" CommitChanges="True" ></px:PXGridColumn>
	<px:PXGridColumn DataField="Action" Width="140" ></px:PXGridColumn>
	<px:PXGridColumn DataField="InvoiceDate" Width="90" ></px:PXGridColumn></Columns>
      </px:PXGridLevel>
    </Levels>
    <AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
    <ActionBar >
    </ActionBar>
  </px:PXGrid>
	<px:PXSmartPanel Width="50%" AutoRepaint="True" CommandSourceID="ds" runat="server" ID="CstSmartPanel14" Height="" Key="CustomerOrders" CaptionVisible="True" Caption="Customer Order" AutoCallBack-Target="CstPXGrid16" AutoCallBack-Command="Refresh">
		<px:PXGrid AllowPaging="True" AdjustPageSize="Auto" AutoAdjustColumns="True" Width="" AutoRepaint="True" SyncPosition="True" SkinID="Inquire" Height="240" runat="server" ID="CstPXGrid16">
			<Levels>
				<px:PXGridLevel DataMember="CustomerOrders" >
					<Columns>
						<px:PXGridColumn DataField="SOOrder__CustomerID" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="SOOrder__CustomerID_Customer_acctName" Width="220" ></px:PXGridColumn>
						<px:PXGridColumn DataField="SOOrder__OrderType" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn LinkCommand="MySOOrder" DataField="SOOrder__OrderNbr" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="InventoryID_InventoryItem_descr" Width="280" ></px:PXGridColumn>
						<px:PXGridColumn DataField="InventoryID" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
						<px:PXGridColumn DataField="RequestDate" Width="90" ></px:PXGridColumn>
						<px:PXGridColumn DataField="UsrForeCastDate" Width="90" CommitChanges="True" ></px:PXGridColumn>
						<px:PXGridColumn CommitChanges="True" DataField="UsrConfirmShipment" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="UsrShippingStatus" Width="70" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels>
			<AutoSize Enabled="True" ></AutoSize></px:PXGrid>
		<px:PXPanel Width="50%" SkinID="Buttons" runat="server" ID="CstPanel15">
			<px:PXButton runat="server" ID="CstButton17" DialogResult="OK" Text="OK" >
				<AutoCallBack Enabled="True" Command="Refresh" Target="grid" >
					<Behavior CommitChanges="True" RepaintControlsIDs="grid" ></Behavior></AutoCallBack>
				<AutoCallBack Command="Refresh" ></AutoCallBack></px:PXButton>
			<px:PXButton CommandName="MyCancel" CommandSourceID="ds" runat="server" ID="CstButton18" DialogResult="Cancel" Text="Cancel" ></px:PXButton></px:PXPanel></px:PXSmartPanel></asp:Content>