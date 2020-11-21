<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="BR200004.aspx.cs" Inherits="Page_BR200004" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="PSGC.PSGCBrgyMaint"
        PrimaryView="AdditionalView"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="MasterView" Width="100%" Height="150px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXSelector CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector1" DataField="Region" ></px:PXSelector>
			<px:PXSelector CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector2" DataField="Province" ></px:PXSelector>
			<px:PXSelector CommitChanges="True" FilterByAllFields="True" AutoRefresh="True" runat="server" ID="CstPXSelector3" DataField="City" ></px:PXSelector>
			<px:PXSelector FilterByAllFields="True" AutoRefresh="True" CommitChanges="True" runat="server" ID="CstPXSelector4" DataField="SubCity" ></px:PXSelector></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid PageSize="20" AdjustPageSize="Auto" AllowPaging="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="AdditionalView">
			    <Columns>
				<px:PXGridColumn DataField="BrgyCode" Width="70" CommitChanges="True" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="BrgyName" Width="220" ></px:PXGridColumn>
				<px:PXGridColumn DataField="RegionCode" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="ProvinceCode" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="CityMunCode" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn DataField="SubMunCode" Width="70" ></px:PXGridColumn></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		</ActionBar>
	
		<Mode AllowUpload="True" ></Mode></px:PXGrid>
</asp:Content>
