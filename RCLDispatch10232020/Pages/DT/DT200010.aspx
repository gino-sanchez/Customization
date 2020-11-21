<%@ Page Language="C#" MasterPageFile="~/MasterPages/ListView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="DT200010.aspx.cs" Inherits="Page_DT200010" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/ListView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.DTMFToolsMaint"
        PrimaryView="Tools"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phL" runat="Server">
	<px:PXGrid SyncPosition="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Primary" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="Tools">
			    <Columns>
				<px:PXGridColumn DataField="Codecd" Width="140" CommitChanges="True" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="Description" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="Amount" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn TextAlign="Center" Type="CheckBox" CommitChanges="True" DataField="Preload" Width="60" ></px:PXGridColumn></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
</asp:Content>
