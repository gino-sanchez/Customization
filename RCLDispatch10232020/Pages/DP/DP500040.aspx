<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="DP500040.aspx.cs" Inherits="Page_DP500040" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.DispatchApprovalRequest"
        PrimaryView="DetailsView"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView Visible="False" ID="form" runat="server" DataSourceID="ds" DataMember="MasterView" Width="100%" Height="100px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True" ID="PXLayoutRule1" /></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid RepaintColumns="True" SyncPosition="True" AdjustPageSize="Auto" AllowPaging="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="PrimaryInquire" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="DetailsView">
			    <Columns>
				<px:PXGridColumn AllowCheckAll="True" TextAlign="Center" DataField="Selected" Width="60" CommitChanges="True" Type="CheckBox" ></px:PXGridColumn>
				<px:PXGridColumn DataField="OrderType" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="OrderNbr" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="OrderDate" Width="90" ></px:PXGridColumn>
				<px:PXGridColumn DataField="CustomerName" Width="180" ></px:PXGridColumn>
				<px:PXGridColumn DataField="InventoryID" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="ItemName" Width="280" ></px:PXGridColumn>
				<px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="RequestQty" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Warehouse" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="NewWarehouse" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="StockOnHand" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="ReasonReject" Width="220" CommitChanges="True" ></px:PXGridColumn>
				<px:PXGridColumn DataField="RequestStatus" Width="120" ></px:PXGridColumn>
				<px:PXGridColumn DataField="RequestType" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="ShippingType" Width="70" Visible="False" /></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
	<px:PXSmartPanel Height="" CommandSourceID="ds" Key="RejectAllComment" CaptionVisible="True" Caption="Reject All" runat="server" ID="CstSmartPanel2">
		<px:PXFormView SkinID="Transparent" Height="60" DataMember="RejectAllComment" runat="server" ID="CstFormView3" >
			<Template>
				<px:PXTextEdit TextMode="MultiLine" LabelWidth="130" Height="60" CommitChanges="True" runat="server" ID="CstPXTextEdit7" DataField="ReasonReject" ></px:PXTextEdit></Template>
			<ContentLayout AutoSizeControls="True" ></ContentLayout></px:PXFormView>
		<px:PXPanel ContentLayout-AutoSizeControls="True" SkinID="Buttons" runat="server" ID="CstPanel4">
			<px:PXButton AlignLeft="True" Text="Ok" runat="server" ID="CstButton5" DialogResult="OK" ></px:PXButton>
			<px:PXButton CommandName="MyCancel" CommandSourceID="ds" Text="Cancel" runat="server" ID="CstButton6" DialogResult="Cancel" >
				<PopupCommand Target="" Command="" >
					<Behavior RepaintControlsIDs="" ></Behavior></PopupCommand>
				<PopupCommand Target="CstFormView3" ></PopupCommand>
				<AutoCallBack Command="" ></AutoCallBack></px:PXButton></px:PXPanel></px:PXSmartPanel></asp:Content>
