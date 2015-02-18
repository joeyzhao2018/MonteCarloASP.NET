<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MonteCarlo2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Monte Carlo Simulation 2</h1>
            </hgroup>
            <p>
                &nbsp;_using information from databases;</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Mean Daily Return:"></asp:Label>
&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
<br />
<br />
    <asp:Label ID="Label2" runat="server" Text="S_0"></asp:Label>
&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Date" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
            <asp:BoundField DataField="Open" HeaderText="Open" SortExpression="Open" />
            <asp:BoundField DataField="High" HeaderText="High" SortExpression="High" />
            <asp:BoundField DataField="Low" HeaderText="Low" SortExpression="Low" />
            <asp:BoundField DataField="Close" HeaderText="Close" SortExpression="Close" />
            <asp:BoundField DataField="Volume" HeaderText="Volume" SortExpression="Volume" />
            <asp:BoundField DataField="adjClose" HeaderText="adjClose" SortExpression="adjClose" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MSFTConnectionString1 %>" DeleteCommand="DELETE FROM [MSFT] WHERE [Date] = @Date" InsertCommand="INSERT INTO [MSFT] ([Date], [Open], [High], [Low], [Close], [Volume], [adjClose]) VALUES (@Date, @Open, @High, @Low, @Close, @Volume, @adjClose)" ProviderName="<%$ ConnectionStrings:MSFTConnectionString1.ProviderName %>" SelectCommand="SELECT [Date], [Open], [High], [Low], [Close], [Volume], [adjClose] FROM [MSFT]" UpdateCommand="UPDATE [MSFT] SET [Open] = @Open, [High] = @High, [Low] = @Low, [Close] = @Close, [Volume] = @Volume, [adjClose] = @adjClose WHERE [Date] = @Date">
        <DeleteParameters>
            <asp:Parameter Name="Date" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Open" Type="Decimal" />
            <asp:Parameter Name="High" Type="Decimal" />
            <asp:Parameter Name="Low" Type="Decimal" />
            <asp:Parameter Name="Close" Type="Decimal" />
            <asp:Parameter Name="Volume" Type="Decimal" />
            <asp:Parameter Name="adjClose" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Open" Type="Decimal" />
            <asp:Parameter Name="High" Type="Decimal" />
            <asp:Parameter Name="Low" Type="Decimal" />
            <asp:Parameter Name="Close" Type="Decimal" />
            <asp:Parameter Name="Volume" Type="Decimal" />
            <asp:Parameter Name="adjClose" Type="Decimal" />
            <asp:Parameter Name="Date" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
