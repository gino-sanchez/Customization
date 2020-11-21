<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="PSPR2020.aspx.cs" Inherits="Page_PSPR2020" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="PSGC.PSGCProvMaint"
        PrimaryView="AdditionalView"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="MasterView" Width="100%" Height="100px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXSelector FilterByAllFields="True" AutoRefresh="True" runat="server" ID="CstPXSelector1" DataField="RegionField" CommitChanges="True" ></px:PXSelector></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid AllowPaging="True" AdjustPageSize="Auto" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="AdditionalView">
			    <Columns>
				<px:PXGridColumn DataField="ProvinceName" Width="180" CommitChanges="True" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="ProvinceCode" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="RegionCode" Width="70" ></px:PXGridColumn></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		</ActionBar>
	
		<Mode AllowUpload="True" /></px:PXGrid>
</asp:Content>