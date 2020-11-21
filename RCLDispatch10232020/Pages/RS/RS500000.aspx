<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="RS500000.aspx.cs" Inherits="Page_RS500000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.RerouteProcessing"
        PrimaryView="SOORDERS"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="MyFilters" Width="100%" Height="" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule1" StartColumn="True" ></px:PXLayoutRule>
			<px:PXLayoutRule GroupCaption="Filters" runat="server" ID="CstPXLayoutRule3" StartGroup="True" ></px:PXLayoutRule>
			<px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit8" DataField="DeliveryDate" ></px:PXDateTimeEdit>
			<px:PXSegmentMask AutoRefresh="True" FilterByAllFields="True" CommitChanges="True" runat="server" ID="CstPXSegmentMask7" DataField="CustomerName" ></px:PXSegmentMask>
			<px:PXSelector CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector9" DataField="OrderNbr" ></px:PXSelector>
			<px:PXDropDown runat="server" ID="CstPXDropDown16" DataField="Status" CommitChanges="True" ></px:PXDropDown>
			<px:PXDropDown CommitChanges="True" runat="server" ID="CstPXDropDown15" DataField="ShippingType" ></px:PXDropDown>
			<px:PXLayoutRule EndGroup="True" runat="server" ID="CstLayoutRule6" ></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule2" StartColumn="True" ></px:PXLayoutRule>
			<px:PXLayoutRule GroupCaption="Actions" runat="server" ID="CstPXLayoutRule4" StartGroup="True" ></px:PXLayoutRule>
			<px:PXDropDown runat="server" ID="CstPXDropDown12" DataField="RerouteAction" CommitChanges="True" ></px:PXDropDown>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule5" EndGroup="True" ></px:PXLayoutRule></Template>

		<ContentLayout AutoSizeControls="" ></ContentLayout>
		<AutoSize MinHeight="200" Enabled="True" ></AutoSize>
		<AutoSize MinHeight="100" ></AutoSize></px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid RepaintColumns="True" BatchUpdate="False" Caption="Reroute" AdjustPageSize="Auto" AllowSearch="" SyncPosition="True" AllowPaging="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="100px" SkinID="Inquire" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="CustomerOrder">
		
				<RowTemplate>
					</RowTemplate>
				<Columns>
					<px:PXGridColumn DataField="Selected" Width="60" Type="CheckBox" TextAlign="Center" CommitChanges="True" ></px:PXGridColumn>
					<px:PXGridColumn DataField="OrderType" Width="70" ></px:PXGridColumn>
					<px:PXGridColumn DataField="OrderNbr" Width="140" ></px:PXGridColumn>
					<px:PXGridColumn DataField="ARInvoice__RefNbr" Width="140" TextField="" >
						<Header Text="" ></Header></px:PXGridColumn>
					<px:PXGridColumn DataField="Status" Width="70" ></px:PXGridColumn>
					<px:PXGridColumn DataField="OrderDate" Width="90" ></px:PXGridColumn>
					<px:PXGridColumn DataField="RequestDate" Width="90" ></px:PXGridColumn>
					<px:PXGridColumn DataField="CustomerID" Width="140" ></px:PXGridColumn>
					<px:PXGridColumn DataField="CustomerID_BAccountR_acctName" Width="220" ></px:PXGridColumn>
					<px:PXGridColumn DataField="SOShippingAddress__AddressLine1" Width="180" ></px:PXGridColumn>
					<px:PXGridColumn DataField="SOShippingAddress__AddressLine2" Width="180" ></px:PXGridColumn>
					<px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
					<px:PXGridColumn DataField="CuryOrderTotal" Width="100" ></px:PXGridColumn></Columns></px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="100" ></AutoSize>
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
	<px:PXSmartPanel runat="server" ID="CstSmartPanel28" Key="SOORDERS" Height="420px" CommandSourceID="ds">
		<px:PXGrid runat="server" ID="CstPXGrid29" SkinID="Details" Height="230">
			<Levels>
				<px:PXGridLevel DataMember="SOORDERS" >
					<Columns>
						<px:PXGridColumn DataField="Completed" Width="60" ></px:PXGridColumn>
						<px:PXGridColumn DataField="CCCardNumber" Width="280" ></px:PXGridColumn>
						<px:PXGridColumn DataField="CCAuthExpirationDate" Width="90" ></px:PXGridColumn>
						<px:PXGridColumn DataField="CashAccountID_description" Width="220" ></px:PXGridColumn>
						<px:PXGridColumn DataField="CashAccountID_CashAccount_descr" Width="220" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid>
		<px:PXPanel SkinID="Buttons" runat="server" ID="CstPanel30" >
			<px:PXButton runat="server" ID="CstButton31" ></px:PXButton>
			<px:PXButton runat="server" ID="CstButton32" ></px:PXButton></px:PXPanel></px:PXSmartPanel></asp:Content>