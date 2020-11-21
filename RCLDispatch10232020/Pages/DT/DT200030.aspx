<%@ Page Language="C#" MasterPageFile="~/MasterPages/ListView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="DT200030.aspx.cs" Inherits="Page_DT200030" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/ListView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.DTMFPlateNoMaint"
        PrimaryView="PlateNos"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phL" runat="Server">
	<px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Primary" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="PlateNos">
			    <Columns>
				<px:PXGridColumn DataField="Codecd" Width="140" CommitChanges="True" />
				<px:PXGridColumn CommitChanges="True" DataField="Description" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="Amount" Width="100" ></px:PXGridColumn>
				<px:PXGridColumn TextAlign="Center" Type="CheckBox" CommitChanges="True" DataField="Preload" Width="60" ></px:PXGridColumn></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
</asp:Content>
