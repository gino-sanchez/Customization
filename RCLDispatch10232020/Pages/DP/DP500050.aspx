<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="DP500050.aspx.cs" Inherits="Page_DP500050" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.DispatchPickUp"
        PrimaryView="DetailsView"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="MasterView" Width="100%" Height="150px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule5" StartGroup="True" GroupCaption="Filters" ></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule22" Merge="True" ></px:PXLayoutRule>
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit24" DataField="RequestedDateFrom" CommitChanges="True" ></px:PXDateTimeEdit>
			<px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit25" DataField="RequestedDateTo" ></px:PXDateTimeEdit>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule23" ></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule27" Merge="True" />
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit26" DataField="PickDateFrom" CommitChanges="True" />
			<px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit29" DataField="PickDateTo" ></px:PXDateTimeEdit>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule28" />
			<px:PXSelector CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector16" DataField="InvoiceNbr" ></px:PXSelector>
			<px:PXSelector CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector15" DataField="SalesOrderNbr" ></px:PXSelector></Template>
	</px:PXFormView>
	<px:PXLayoutRule runat="server" ID="CstLayoutRule7" EndGroup="True" /></asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid AdjustPageSize="Auto" AllowPaging="True" SyncPosition="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="" SkinID="Inquire" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="DetailsView">
			   
			
				<Columns>
					<px:PXGridColumn AllowCheckAll="True" DataField="Selected" Width="60" CommitChanges="True" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
											<px:PXGridColumn DataField="InvoiceNbr" Width="140" ></px:PXGridColumn>
											<px:PXGridColumn DataField="OrderNbr" Width="140" ></px:PXGridColumn>
											<px:PXGridColumn DataField="PickDate" Width="90" ></px:PXGridColumn>
											<px:PXGridColumn DataField="RequestedDate" Width="90" ></px:PXGridColumn>
											<px:PXGridColumn DataField="ForecastDate" Width="90" />
											<px:PXGridColumn DataField="CustomerName" Width="180" ></px:PXGridColumn>
											<px:PXGridColumn DataField="InventoryID" Width="70" ></px:PXGridColumn>
											<px:PXGridColumn DataField="ItemName" Width="280" ></px:PXGridColumn>
											<px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
											<px:PXGridColumn DataField="PickedQty" Width="100" ></px:PXGridColumn>
											<px:PXGridColumn DataField="ClaimQty" Width="100" CommitChanges="True" ></px:PXGridColumn>
											<px:PXGridColumn DataField="Warehouse" Width="140" ></px:PXGridColumn>
											<px:PXGridColumn DataField="Location" Width="140" ></px:PXGridColumn></Columns></px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
	<px:PXSmartPanel CaptionVisible="True" AutoCallBack-Target="CstPXGrid18" CommandName="" AutoCallBack-Command="Refresh" AutoRepaint="True" runat="server" ID="CstSmartPanel17" Key="CorrectShipmentSplit" Caption="Correct Shipping Type" CommandSourceID="ds">
		<px:PXGrid AdjustPageSize="Auto" AllowPaging="True" AutoAdjustColumns="True" Height="240" SyncPosition="True" runat="server" ID="CstPXGrid18" CaptionVisible="True" SkinID="Inquire">
			<Levels>
				<px:PXGridLevel DataMember="CorrectShipmentSplit" >
					<Columns>
						<px:PXGridColumn AllowCheckAll="True" CommitChanges="True" Type="CheckBox" TextAlign="Center" DataField="Selected" Width="60" ></px:PXGridColumn>
						<px:PXGridColumn DataField="CustomerName" Width="180" ></px:PXGridColumn>
						<px:PXGridColumn DataField="OrderType" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="OrderNbr" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="InvoiceNbr" Width="140" ></px:PXGridColumn>
						<px:PXGridColumn DataField="InventoryID" Width="70" ></px:PXGridColumn>
						<px:PXGridColumn DataField="ItemName" Width="280" ></px:PXGridColumn>
						<px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
						<px:PXGridColumn CommitChanges="True" DataField="CorrectQty" Width="100" ></px:PXGridColumn>
						<px:PXGridColumn CommitChanges="True" DataField="ShippingType" Width="70" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid>
		<px:PXPanel runat="server" ID="CstPanel19" SkinID="Buttons">
			<px:PXButton CommandSourceID="ds" CommandName="ProcessShippingType" DialogResult="OK" runat="server" ID="CstButton20" Text="OK" ></px:PXButton>
			<px:PXButton runat="server" ID="CstButton21" DialogResult="Cancel" Text="CANCEL" ></px:PXButton></px:PXPanel></px:PXSmartPanel></asp:Content>