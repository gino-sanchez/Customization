<%@ Page Language="C#" MasterPageFile="~/MasterPages/FormDetail.master" AutoEventWireup="true" ValidateRequest="false" CodeFile="LP501030.aspx.cs" Inherits="Page_LP501030" Title="Untitled Page" %>
<%@ MasterType VirtualPath="~/MasterPages/FormDetail.master" %>

<asp:Content ID="cont1" ContentPlaceHolderID="phDS" Runat="Server">
  <px:PXDataSource PageLoadBehavior="PopulateSavedValues" ID="ds" runat="server" Visible="True" Width="100%"
        TypeName="Dispatch.LoadPlanProcess"
        PrimaryView="LoadPlan"
        >
    <CallbackCommands>

    </CallbackCommands>
  </px:PXDataSource>
</asp:Content>
<asp:Content ID="cont2" ContentPlaceHolderID="phF" Runat="Server">
  <px:PXFormView ID="form" runat="server" DataSourceID="ds" DataMember="LoadPlan" Width="100%" Height="" AllowAutoHide="false">

    
  
    <Template>
      <px:PXLayoutRule runat="server" ID="CstPXLayoutRule26" StartRow="True" ></px:PXLayoutRule>
      <px:PXLayoutRule runat="server" ID="CstPXLayoutRule27" StartColumn="True" ></px:PXLayoutRule>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit74" DataField="DeliveryDateFrom" CommitChanges="True" ></px:PXDateTimeEdit>
            <px:PXSelector AutoRefresh="True" FilterByAllFields="True" CommitChanges="True" runat="server" ID="CstPXSelector30" DataField="Warehouse" ></px:PXSelector>
	<px:PXSelector CommitChanges="True" AutoComplete="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector75" DataField="CustomerID" ></px:PXSelector>
	<px:PXSelector CommitChanges="True" AutoComplete="True" AutoRefresh="True" FilterByAllFields="True" runat="server" ID="CstPXSelector76" DataField="CustomerLocationID" ></px:PXSelector>
	<px:PXSelector runat="server" ID="CstPXSelector73" DataField="SONumber" CommitChanges="True" AutoRefresh="True" FilterByAllFields="True" ></px:PXSelector>
	<px:PXSelector CommitChanges="True" FilterByAllFields="True" AutoRefresh="True" runat="server" ID="CstPXSelector72" DataField="SINumber" ></px:PXSelector>
            <px:PXTextEdit Visible="False" runat="server" ID="CstPXTextEdit59" DataField="ConfirmedStat" ></px:PXTextEdit>
      <px:PXLayoutRule LabelsWidth="150" runat="server" ID="CstPXLayoutRule28" StartColumn="True" ></px:PXLayoutRule>
	<px:PXDateTimeEdit runat="server" ID="CstPXDateTimeEdit77" DataField="DeliveryDateTo" CommitChanges="True" />
            <px:PXSelector AllowEdit="True" CommitChanges="True" runat="server" ID="CstPXSelector58" DataField="TruckID" >
              <AutoCallBack Command="" ></AutoCallBack></px:PXSelector>
            <px:PXTextEdit runat="server" ID="CstPXTextEdit56" DataField="DriverName" ></px:PXTextEdit>
            <px:PXLayoutRule runat="server" ID="CstPXLayoutRule63" Merge="True" ></px:PXLayoutRule>
            <px:PXCheckBox CommitChanges="True" runat="server" ID="CstPXCheckBox64" DataField="ShowEightyPercent" ></px:PXCheckBox>
            <px:PXCheckBox CommitChanges="True" runat="server" ID="CstPXCheckBox65" DataField="ShowOneHundredPercent" ></px:PXCheckBox>
            <px:PXLayoutRule runat="server" ID="CstPXLayoutRule60" StartRow="True" ></px:PXLayoutRule>
            <px:PXLayoutRule ControlSize="200" LabelsWidth="200" runat="server" ID="CstPXLayoutRule46" StartColumn="True" GroupCaption="Truck KGS" ></px:PXLayoutRule>
            <px:PXNumberEdit CommitChanges="True" runat="server" ID="CstPXNumberEdit48" DataField="CurrentCapacityKGS" ></px:PXNumberEdit>
            <px:PXNumberEdit runat="server" ID="CstPXNumberEdit50" DataField="TotalTruckCapacityKGS" ></px:PXNumberEdit>
            <px:PXNumberEdit CommitChanges="True" runat="server" ID="CstPXNumberEdit49" DataField="RemTruckBalKGS" ></px:PXNumberEdit>
            <px:PXLayoutRule EndGroup="True" runat="server" ID="CstLayoutRule51" ></px:PXLayoutRule>
            <px:PXLayoutRule ControlSize="200" LabelsWidth="200" GroupCaption="Truck CBM" runat="server" ID="CstPXLayoutRule47" StartColumn="True" ></px:PXLayoutRule>
            <px:PXNumberEdit CommitChanges="True" runat="server" ID="CstPXNumberEdit52" DataField="CurrentCapacityCBM" ></px:PXNumberEdit>
            <px:PXNumberEdit runat="server" ID="CstPXNumberEdit54" DataField="TotalTruckCapacityCBM" ></px:PXNumberEdit>
            <px:PXNumberEdit CommitChanges="True" runat="server" ID="CstPXNumberEdit53" DataField="RemTruckBalCBM" ></px:PXNumberEdit></Template>





</px:PXFormView>
</asp:Content>
<asp:Content ID="cont3" ContentPlaceHolderID="phG" Runat="Server">
<px:PXSplitContainer runat="server" ID="sp1" SkinID="Horizontal" SplitterPosition=700 Panel1MinSize="350" Panel2MinSize="350">
<Template1>
<AutoCallBack Command="Refresh" Target="grid" ActiveBehavior="True">
                  <Behavior RepaintControlsIDs="grid" ></Behavior>
                </AutoCallBack>
<px:PXGrid AdjustPageSize="Auto" AutoAdjustColumns="" AllowPaging="True" BatchUpdate="False" RepaintColumns="" SyncPosition="True" Width="100%" SkinID="Inquire" Height="350" ID="gridHeader" runat="server" DataSourceID="ds">
                <AutoSize Enabled="true"  MinHeight="350"  ></AutoSize>
<Levels>
<px:PXGridLevel DataMember="SplitOrder">


  <Columns>
    <px:PXGridColumn TextAlign="Center" AllowCheckAll="True" Type="CheckBox" CommitChanges="True" DataField="Selected" Width="60" ></px:PXGridColumn>
    <px:PXGridColumn LinkCommand="" DataField="CustomerID_Customer_acctName" Width="220" ></px:PXGridColumn>
	<px:PXGridColumn DataField="CustomerLocationID" Width="70" />
	<px:PXGridColumn DataField="CustomerLocationID_description" Width="220" />
    <px:PXGridColumn DataField="OrderType" Width="70" ></px:PXGridColumn>
    <px:PXGridColumn LinkCommand="MySO" DataField="OrderNbr" Width="140" ></px:PXGridColumn>
    <px:PXGridColumn DataField="UsrOrderType" Width="70" ></px:PXGridColumn>
    <px:PXGridColumn LinkCommand="MyInvoice" DataField="UsrInvoiceNbr" Width="140" ></px:PXGridColumn>
    <px:PXGridColumn DataField="OrderQty" Width="100" ></px:PXGridColumn>
    <px:PXGridColumn DataField="UsrPickQty" Width="100" ></px:PXGridColumn>
    <px:PXGridColumn DataField="UsrPercentage" Width="100" ></px:PXGridColumn></Columns></px:PXGridLevel>
</Levels>
            
  
  
  <AutoCallBack Command="" ></AutoCallBack>
  <AutoCallBack Target="gridHeader" ></AutoCallBack>
  <OnChangeCommand Command="" Target="" ></OnChangeCommand>
  <OnChangeCommand Command="Refresh" ></OnChangeCommand></px:PXGrid>
</Template1>
<Template2>


<px:PXGrid AdjustPageSize="Auto" AllowPaging="True" BatchUpdate="False" SyncPosition="True" ID="grid" runat="server" DataSourceID="ds" Width="100%" Height="350" SkinID="Inquire" AllowAutoHide="false">
<AutoSize Enabled="true"  MinHeight="350"  ></AutoSize>
    <Levels>
      <px:PXGridLevel DataMember="LoadPlanProcessing">
          <Columns>
        <px:PXGridColumn TextAlign="Center" AllowCheckAll="True" Type="CheckBox" CommitChanges="True" DataField="UsrSelected" Width="60" ></px:PXGridColumn>
        <px:PXGridColumn DataField="SOOrder__CustomerID_description" Width="220" ></px:PXGridColumn>
        <px:PXGridColumn DataField="SOOrder__OrderType" Width="70" ></px:PXGridColumn>
        <px:PXGridColumn LinkCommand="LineSO" DataField="SOOrder__OrderNbr" Width="140" ></px:PXGridColumn>
        <px:PXGridColumn DataField="UsrSIType" Width="120" ></px:PXGridColumn>
        <px:PXGridColumn LinkCommand="LineInvoice" DataField="UsrSINum" Width="140" ></px:PXGridColumn>
        <px:PXGridColumn DataField="SiteID" Width="140" ></px:PXGridColumn>
        <px:PXGridColumn LinkCommand="InventoryItemMaint" DataField="InventoryID" Width="70" ></px:PXGridColumn>
        <px:PXGridColumn DataField="InventoryID_description" Width="280" ></px:PXGridColumn>
        <px:PXGridColumn CommitChanges="True" DataField="OrderQty" Width="100" ></px:PXGridColumn>
        <px:PXGridColumn DataField="UsrPickListQty" Width="100" ></px:PXGridColumn>
        <px:PXGridColumn Visible="False" DataField="UsrOpenQty" Width="100" ></px:PXGridColumn>
        <px:PXGridColumn DataField="UsrPercentagePerItem" Width="100" ></px:PXGridColumn>
        <px:PXGridColumn CommitChanges="True" DataField="UsrLoadPlanQty" Width="100" ></px:PXGridColumn>
        <px:PXGridColumn DataField="UnitWeigth" Width="100" ></px:PXGridColumn>
        <px:PXGridColumn DataField="UnitVolume" Width="100" ></px:PXGridColumn>
        <px:PXGridColumn DataField="UsrTotalKgs" Width="100" ></px:PXGridColumn>
        <px:PXGridColumn DataField="UsrTotalCBM" Width="100" ></px:PXGridColumn></Columns>
      </px:PXGridLevel>
    </Levels></px:PXGrid>
</Template2>

          
  <AutoSize MinHeight="700" Enabled="True" ></AutoSize>
  <AutoSize MinHeight="500" ></AutoSize></px:PXSplitContainer>

</asp:Content>