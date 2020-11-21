<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="BL300010.aspx.cs" Inherits="Page_BL300010" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.BackloadEntry"
        PrimaryView="BackloadHead"
        >
		<CallbackCommands>
			<px:PXDSCallbackCommand Name="Allocations" Visible="False" CommitChanges="true" /></CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="BackloadHead" Width="100%" Height="" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule runat="server" StartRow="True" ID="PXLayoutRule1" ></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule1" StartColumn="True" ></px:PXLayoutRule>
			<px:PXSelector CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector13" DataField="BackloadNbr" ></px:PXSelector>
			<px:PXDropDown runat="server" ID="CstPXDropDown17" DataField="BackloadStatus" CommitChanges="True" ></px:PXDropDown>
			<px:PXCheckBox runat="server" ID="CstPXCheckBox16" DataField="Hold" CommitChanges="True" AlignLeft="False" TextAlign="Right" ></px:PXCheckBox>
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit6" DataField="BackloadDate" ></px:PXDateTimeEdit>
			<px:PXCheckBox CommitChanges="True" runat="server" ID="CstPXCheckBox19" DataField="IsCM" ></px:PXCheckBox>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule2" StartColumn="True" ></px:PXLayoutRule>
			<px:PXSelector runat="server" ID="CstPXSelector10" DataField="CustomerID" CommitChanges="True" AutoRefresh="" FilterByAllFields="True" ></px:PXSelector>
			<px:PXSegmentMask CommitChanges="True" AutoRefresh="True" AutoComplete="True" FilterByAllFields="True" runat="server" ID="CstPXSegmentMask11" DataField="CustomerIDLocation" ></px:PXSegmentMask></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid SyncPosition="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="BackloadLine">
			    <Columns>
				<px:PXGridColumn CommitChanges="True" DataField="BackloadType" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="BackloadNbr" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="ShipmentNbr" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="InvoiceNbr" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SiteID" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SiteID_description" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn DataField="InventoryID" Width="70" CommitChanges="True" ></px:PXGridColumn>
				<px:PXGridColumn DataField="InventoryID_description" Width="280" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Qty" Width="100" ></px:PXGridColumn></Columns>
			
				<RowTemplate>
					<px:PXSelector runat="server" ID="CstPXSelector15" DataField="BackloadType" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" AutoComplete="True" ></px:PXSelector></RowTemplate></px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		
			<CustomItems>
				<px:PXToolBarButton>
					<AutoCallBack Target="ds" Command="Allocations" ></AutoCallBack></px:PXToolBarButton></CustomItems></ActionBar>
	
		<Mode InitNewRow="True" ></Mode></px:PXGrid>
	<px:PXSmartPanel AutoCallBack-Command="Refresh" AutoCallBack-Target="CstPXGrid20" runat="server" ID="CstSmartPanel19" Caption="Allocations" CaptionVisible="True" CommandSourceID="ds" Height="400" Key="backloadSplits">
		<px:PXGrid Width="" AdjustPageSize="Auto" AllowPaging="False" Height="230" SkinID="Details" runat="server" ID="CstPXGrid20">
			<Levels>
				<px:PXGridLevel DataMember="backloadSplits" >
					<Columns>
						<px:PXGridColumn DataField="LocationID" Width="140" CommitChanges="True" ></px:PXGridColumn>
						<px:PXGridColumn DataField="LotSerialNbr" Width="220" CommitChanges="True" ></px:PXGridColumn>
						<px:PXGridColumn CommitChanges="True" DataField="Qty" Width="100" ></px:PXGridColumn></Columns>
					<RowTemplate>
						<px:PXSelector runat="server" ID="CstPXSelector24" DataField="LotSerialNbr" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" ></px:PXSelector></RowTemplate></px:PXGridLevel></Levels>
			<Mode AllowAddNew="True" AllowDelete="True" InitNewRow="True" ></Mode></px:PXGrid>
		<px:PXPanel SkinID="Buttons" runat="server" ID="CstPanel21">
			<px:PXButton DialogResult="OK" Text="OK" runat="server" ID="CstButton22" ></px:PXButton></px:PXPanel></px:PXSmartPanel></asp:Content>