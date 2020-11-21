<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormView.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="DP200000.aspx.cs" Inherits="Page_DP200000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormView.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="DispatchSetup.DispatchSetupEntry"
        PrimaryView="MasterView"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="MasterView" Width="100%" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXLayoutRule LabelsWidth="175" GroupCaption="Numbering Sequence" runat="server" ID="CstPXLayoutRule4" StartGroup="True" ></px:PXLayoutRule>
			<px:PXSelector AllowEdit="True" runat="server" ID="CstPXSelector6" DataField="ZoneNumberingID" ></px:PXSelector>
			<px:PXSelector AllowEdit="True" runat="server" ID="CstPXSelector7" DataField="PickLIstNumberingID" ></px:PXSelector>
			<px:PXSelector AllowEdit="True" runat="server" ID="CstPXSelector8" DataField="TripTicketNumberingID" ></px:PXSelector>
			<px:PXSelector AllowEdit="True" runat="server" ID="CstPXSelector9" DataField="DTMFNumberingID" CommitChanges="True" ></px:PXSelector>
			<px:PXSelector runat="server" ID="CstPXSelector16" DataField="BackLoadNumberingID" CommitChanges="True" AllowEdit="True" ></px:PXSelector>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule12" EndGroup="True" ></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule10" StartRow="True" ></px:PXLayoutRule>
			<px:PXLayoutRule GroupCaption="Service Call" EndGroup="True" runat="server" ID="CstLayoutRule11" ></px:PXLayoutRule>
			<px:PXCheckBox AlignLeft="True" runat="server" ID="CstPXCheckBox14" DataField="IsForeCasted" ></px:PXCheckBox>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule13" EndGroup="True" ></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule18" StartRow="True" ></px:PXLayoutRule>
			<px:PXLayoutRule GroupCaption="Backload Type Preferences" runat="server" ID="CstPXLayoutRule19" StartGroup="True" EndGroup="True" ></px:PXLayoutRule>
			<px:PXSelector runat="server" ID="CstPXSelector22" DataField="BackloadReturnType" ></px:PXSelector>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule20" EndGroup="True" ></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule23" StartRow="True" ></px:PXLayoutRule>
			<px:PXLayoutRule GroupCaption="Dispatch Settings" runat="server" ID="CstPXLayoutRule24" StartGroup="True" ></px:PXLayoutRule>
			<px:PXCheckBox AlignLeft="True" runat="server" ID="CstPXCheckBox26" DataField="RequireInvPay" CommitChanges="True" ></px:PXCheckBox>
			<px:PXLayoutRule runat="server" ID="CstLayoutRule25" EndGroup="True" ></px:PXLayoutRule></Template>
		<AutoSize Container="Window" Enabled="True" MinHeight="200" ></AutoSize>
	</px:PXFormView></asp:Content>