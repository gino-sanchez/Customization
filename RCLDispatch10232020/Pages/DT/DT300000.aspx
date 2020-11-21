<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormTab.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="DT300000.aspx.cs" Inherits="Page_DT300000" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormTab.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
	<px:PXDataSource ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.DTMFEntry"
        PrimaryView="DTMFMasterView"
        >
		<CallbackCommands>

		</CallbackCommands>
	</px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
	<px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="DTMFMasterView" Width="100%" Height="" AllowAutoHide="false">
		<Template>
			<px:PXLayoutRule ID="PXLayoutRule1" runat="server" StartRow="True"></px:PXLayoutRule>
			<px:PXLayoutRule runat="server" ID="CstPXLayoutRule1" StartColumn="True" ></px:PXLayoutRule>
			<px:PXSelector AutoRefresh="True" runat="server" ID="CstPXSelector21" DataField="RefNbr" ></px:PXSelector>
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit3" DataField="DocDate" ></px:PXDateTimeEdit>
			<px:PXSelector AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector24" DataField="Branch" CommitChanges="True" ></px:PXSelector>
			<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit116" DataField="DeliveryDate_Date" CommitChanges="True" />
			<px:PXDateTimeEdit TimeMode="True" CommitChanges="True" runat="server" ID="CstPXDateTimeEdit117" DataField="DeliveryDate_Time" ></px:PXDateTimeEdit>
			<px:PXSelector AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector27" DataField="TruckPlateNo" CommitChanges="True" ></px:PXSelector>
			<px:PXLayoutRule ColumnSpan="2" runat="server" ID="CstLayoutRule8" ></px:PXLayoutRule>
			<px:PXTextEdit runat="server" ID="CstPXTextEdit7" DataField="Description" TextMode="MultiLine" ></px:PXTextEdit>
			<px:PXLayoutRule ColumnSpan="2" runat="server" ID="CstPXLayoutRule2" StartColumn="True" ></px:PXLayoutRule>
			<px:PXSegmentMask runat="server" ID="CstPXSegmentMask22" DataField="CheckedBy" ></px:PXSegmentMask>
			<px:PXSegmentMask runat="server" ID="CstPXSegmentMask23" DataField="NotedBy" ></px:PXSegmentMask></Template>
	</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
	<px:PXTab ID="tab" runat="server" Width="100%" Height="150px" DataSourceID="ds" AllowAutoHide="false">
		<Items>
			<px:PXTabItem Text="General Info">

			
				<Template>
					<px:PXFormView SkinID="Transparent" Width="100%" DataSourceID="ds" DataMember="DTMFMasterView" runat="server" ID="CstFormView98">
						<Template>
							<px:PXLayoutRule runat="server" ID="CstPXLayoutRule99" StartRow="True" ></px:PXLayoutRule>
							<px:PXLayoutRule runat="server" ID="CstPXLayoutRule100" StartColumn="True" ></px:PXLayoutRule>
							<px:PXNumberEdit runat="server" ID="CstPXNumberEdit107" DataField="PalletQtyOut" ></px:PXNumberEdit>
							<px:PXNumberEdit runat="server" ID="CstPXNumberEdit106" DataField="PalletQtyIn" ></px:PXNumberEdit>
							<px:PXNumberEdit runat="server" ID="CstPXNumberEdit105" DataField="FlatChartQtyOut" ></px:PXNumberEdit>
							<px:PXNumberEdit runat="server" ID="CstPXNumberEdit104" DataField="FlatChartQtyIn" ></px:PXNumberEdit>
							<px:PXLayoutRule runat="server" ID="CstPXLayoutRule101" StartColumn="True" ></px:PXLayoutRule>
							<px:PXCheckBox AlignLeft="True" runat="server" ID="CstPXCheckBox109" DataField="OdometerReaderOut" CommitChanges="True" ></px:PXCheckBox>
							<px:PXCheckBox CommitChanges="True" AlignLeft="True" runat="server" ID="CstPXCheckBox108" DataField="OdometerReaderIn" ></px:PXCheckBox>
							<px:PXNumberEdit LabelWidth="170px" runat="server" ID="CstPXNumberEdit111" DataField="OdometerReadingOut" ></px:PXNumberEdit>
							<px:PXNumberEdit LabelWidth="170px" runat="server" ID="CstPXNumberEdit110" DataField="OdometerReadingIn" ></px:PXNumberEdit></Template></px:PXFormView></Template></px:PXTabItem>
			<px:PXTabItem Text="Vehicle Info">
				<Template>
					<px:PXGrid runat="server" Width="100%" SyncPosition="True" SkinID="Details" ID="CstPXGrid25">
						<AutoSize Enabled="True" />
						<Levels>
							<px:PXGridLevel DataMember="VehicleView">
								<Columns>
									<px:PXGridColumn DataField="Codeid" Width="140" CommitChanges="True" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Description" Width="220" />
									<px:PXGridColumn DataField="Amount" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn CommitChanges="True" Type="CheckBox" TextAlign="Center" DataField="VehicleOut" Width="60" ></px:PXGridColumn>
									<px:PXGridColumn TextAlign="Center" Type="CheckBox" CommitChanges="True" DataField="VehicleIn" Width="60" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template>
			</px:PXTabItem>
			<px:PXTabItem Text="Tools Info" >
				<Template>
					<px:PXGrid runat="server" Width="100%" SyncPosition="True" SkinID="Details" ID="CstPXGrid28">
						<AutoSize Enabled="True" />
						<Levels>
							<px:PXGridLevel DataMember="ToolsView">
								<Columns >
									<px:PXGridColumn DataField="Codeid" Width="220" CommitChanges="True" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Description" Width="220" />
									<px:PXGridColumn DataField="Amount" Width="100" ></px:PXGridColumn>
									<px:PXGridColumn TextAlign="Center" CommitChanges="True" Type="CheckBox" DataField="ToolsOut" Width="60" ></px:PXGridColumn>
									<px:PXGridColumn TextAlign="Center" CommitChanges="True" Type="CheckBox" DataField="ToolsIn" Width="60" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem>
			<px:PXTabItem Text="Tire Info" >
				<Template>
					<px:PXGrid runat="server" Width="100%" SyncPosition="True" SkinID="Details" ID="CstPXGrid29">
						<AutoSize Enabled="True" />
						<Levels>
							<px:PXGridLevel DataMember="TireView">
								<Columns >
									<px:PXGridColumn CommitChanges="True" DataField="Codeid" Width="220" ></px:PXGridColumn>
									<px:PXGridColumn DataField="Description" Width="220" />
									<px:PXGridColumn DataField="Amount" Width="100" />
									<px:PXGridColumn TextAlign="Center" Type="CheckBox" DataField="TireOut" Width="60" CommitChanges="True" ></px:PXGridColumn>
									<px:PXGridColumn TextAlign="Center" CommitChanges="True" Type="CheckBox" DataField="TireIn" Width="60" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem>
			<px:PXTabItem Text="Plate No. Info" >
				<Template>
					<px:PXGrid runat="server" Width="100%" SyncPosition="True" SkinID="Details" ID="CstPXGrid30">
						<AutoSize Enabled="True" />
						<Levels>
							<px:PXGridLevel DataMember="PlateNoView">
								<Columns >
									<px:PXGridColumn DataField="Codeid" Width="220" CommitChanges="True" />
									<px:PXGridColumn DataField="Description" Width="220" />
									<px:PXGridColumn DataField="Amount" Width="100" />
									<px:PXGridColumn CommitChanges="True" Type="CheckBox" TextAlign="Center" DataField="PlateOut" Width="60" ></px:PXGridColumn>
									<px:PXGridColumn TextAlign="Center" Type="CheckBox" CommitChanges="True" DataField="PlateIn" Width="60" ></px:PXGridColumn></Columns></px:PXGridLevel></Levels></px:PXGrid></Template></px:PXTabItem>
			<px:PXTabItem Text="Dispatch Info" >
				
				<Template>
					<px:PXFormView DataSourceID="ds" SkinID="Transparent" Width="100%" DataMember="DTMFMasterView" runat="server" ID="CstFormView84">
						<Template>
							<px:PXLayoutRule runat="server" ID="CstPXLayoutRule85" StartRow="True" ></px:PXLayoutRule>
							<px:PXLayoutRule runat="server" ID="CstPXLayoutRule86" StartColumn="True" ></px:PXLayoutRule>
							<px:PXLayoutRule runat="server" ID="CstLayoutRule88" GroupCaption="Dispatch Out" ></px:PXLayoutRule>
							<px:PXDateTimeEdit CommitChanges="True" TimeMode="True" runat="server" ID="CstPXDateTimeEdit119" DataField="ActualDepartureDate_Time" ></px:PXDateTimeEdit>
							<px:PXDateTimeEdit CommitChanges="True" TimeMode="True" runat="server" ID="CstPXDateTimeEdit124" DataField="LastTruckOutDate_Time" ></px:PXDateTimeEdit>
							<px:PXDateTimeEdit LabelWidth="170px" CommitChanges="True" runat="server" ID="CstPXDateTimeEdit118" DataField="ActualDepartureDate_Date" ></px:PXDateTimeEdit>
							<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit128" DataField="LastTruckOutDate" CommitChanges="True" ></px:PXDateTimeEdit>
							<px:PXSegmentMask LabelWidth="140px" AutoRefresh="True" CommitChanges="True" FilterByAllFields="True" runat="server" ID="CstPXSegmentMask94" DataField="ActualOutInspector" ></px:PXSegmentMask>
							<px:PXTextEdit Height="120px" runat="server" ID="CstPXTextEdit131" DataField="DetailsOut" TextMode="MultiLine" ></px:PXTextEdit>
							<px:PXLayoutRule EndGroup="True" runat="server" ID="CstLayoutRule89" ></px:PXLayoutRule>
							<px:PXLayoutRule runat="server" ID="CstPXLayoutRule87" StartColumn="True" ></px:PXLayoutRule>
							<px:PXLayoutRule GroupCaption="Dispatch In" runat="server" ID="CstLayoutRule90" ></px:PXLayoutRule>
							<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit122" DataField="ActualReturnDate_Time" TimeMode="True" CommitChanges="True" ></px:PXDateTimeEdit>
							<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit127" DataField="LastTruckInDate_Time" TimeMode="True" CommitChanges="True" ></px:PXDateTimeEdit>
							<px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit121" DataField="ActualReturnDate_Date" ></px:PXDateTimeEdit>
							<px:PXDateTimeEdit CommitChanges="True" runat="server" ID="CstPXDateTimeEdit126" DataField="LastTruckInDate_Date" ></px:PXDateTimeEdit>
							<px:PXSegmentMask CommitChanges="True" LabelWidth="140px" runat="server" ID="CstPXSegmentMask96" DataField="ActualInInspector" ></px:PXSegmentMask>
							<px:PXTextEdit Height="120px" TextMode="MultiLine" runat="server" ID="CstPXTextEdit132" DataField="DetailsIn" ></px:PXTextEdit>
							<px:PXLayoutRule EndGroup="True" runat="server" ID="CstLayoutRule91" ></px:PXLayoutRule></Template></px:PXFormView></Template></px:PXTabItem>
			<px:PXTabItem Text="Backload" >
				
				<Template>
					<px:PXFormView runat="server" ID="CstFormView79" DataMember="DTMFMasterView" Width="100%" SkinID="Transparent" DataSourceID="ds">
						<Template>
							<px:PXLayoutRule runat="server" ID="CstPXLayoutRule80" StartRow="True" ></px:PXLayoutRule>
							<px:PXCheckBox runat="server" ID="CstPXCheckBox82" DataField="WithoutBackLoad" CommitChanges="True" AlignLeft="True" />
							<px:PXCheckBox AlignLeft="True" CommitChanges="True" runat="server" ID="CstPXCheckBox81" DataField="WithBackLoad" ></px:PXCheckBox>
							<px:PXTextEdit runat="server" ID="CstPXTextEdit83" DataField="BackLoadFormRefNo" /></Template></px:PXFormView></Template></px:PXTabItem></Items>
		<AutoSize Container="Window" Enabled="True" MinHeight="150" ></AutoSize>
	</px:PXTab>
</asp:Content>