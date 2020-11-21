<%@ Page Language="C#" MasterPageFile="~/MasterPages/ListView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="TR200000.aspx.cs" Inherits="Page_TR200000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/ListView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.TruckMaint"
        PrimaryView="Trucks"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phL" runat="Server">
	<px:PXGrid SyncPosition="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Primary" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="Trucks">
			    <Columns>
				<px:PXGridColumn DataField="TruckCD" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Brand" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="AssetID" Width="140" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="BranchID" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="BranchName" Width="140" />
				<px:PXGridColumn DataField="Model" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Descr" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="Status" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="TruckCapacityKGS" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="TruckCapacityCMB" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn DataField="DriverID" Width="180" ></px:PXGridColumn></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
</asp:Content>
