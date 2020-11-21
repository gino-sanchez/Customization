<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="SB000001.aspx.cs" Inherits="Page_SB000001" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="PSGC.SubMunicipalityMaint"
        PrimaryView="SubCityView"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="SubCityFilters" Width="100%" Height="100px" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXSelector runat="server" ID="CstPXSelector1" DataField="PRegion" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" ></px:PXSelector>
			<px:PXSelector CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector3" DataField="City" ></px:PXSelector></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXGrid ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="150px" SkinID="Details" AllowAutoHide="false">
		<Levels>
			<px:PXGridLevel DataMember="SubCityView">
			    <Columns>
				<px:PXGridColumn DataField="SubMunCode" Width="70" />
				<px:PXGridColumn CommitChanges="True" DataField="SubMunName" Width="180" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="CityMunCode" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="DistrictCode" Width="70" ></px:PXGridColumn>
				<px:PXGridColumn CommitChanges="True" DataField="RegionCode" Width="70" ></px:PXGridColumn></Columns>
			</px:PXGridLevel>
		</Levels>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
		<ActionBar >
		</ActionBar>
	
		<Mode AllowUpload="True" /></px:PXGrid>
</asp:Content>
