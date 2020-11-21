<%@ Page Language="C#" MasterPageFile="~/MasterPages/ListView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="BL200010.aspx.cs" Inherits="Page_BL200010" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/ListView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.BackloadTypeMaint"
        PrimaryView="BackloadTypes"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phL" runat="Server">
	<px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Primary" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="BackloadTypes">
			    <Columns>
				<px:PXGridColumn DataField="BackloadTypeCD" Width="120" CommitChanges="True" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Descr" Width="180" ></px:PXGridColumn>
				<px:PXGridColumn TextAlign="Center" DataField="IsActive" Width="60" CommitChanges="True" Type="CheckBox" ></px:PXGridColumn>
				<px:PXGridColumn Type="CheckBox" TextAlign="Center" DataField="BackloadReturn" Width="60" CommitChanges="True" ></px:PXGridColumn>
				<px:PXGridColumn TextAlign="Center" Type="CheckBox" DataField="Goods" Width="60" CommitChanges="True" ></px:PXGridColumn>
				<px:PXGridColumn TextAlign="Center" Type="CheckBox" CommitChanges="True" DataField="Damage" Width="60" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" Type="CheckBox" TextAlign="Center" DataField="ReturnToDmgWarehouse" Width="60" ></px:PXGridColumn>
				<px:PXGridColumn DataField="Issue" Width="60" CommitChanges="True" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
				<px:PXGridColumn DataField="WithBuffer" Width="60" CommitChanges="True" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
				<px:PXGridColumn DataField="OneStepStaging" Width="60" CommitChanges="True" Type="CheckBox" TextAlign="Center" ></px:PXGridColumn>
				<px:PXGridColumn TextAlign="Center" CommitChanges="True" Type="CheckBox" DataField="OneStepDefaultWarehouseLocation" Width="60" ></px:PXGridColumn></Columns>
			
				<RowTemplate>
					<px:PXCheckBox runat="server" ID="CstPXCheckBox1" DataField="IsActive" CommitChanges="True" ></px:PXCheckBox>
								<px:PXSelector CommitChanges="True" AutoComplete="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector2" DataField="ReturnType" ></px:PXSelector></RowTemplate></px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" />
		<ActionBar >
		</ActionBar>
	</px:PXGrid>
</asp:Content>