<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra2.Master" AutoEventWireup="true" CodeBehind="Placas.aspx.cs" Inherits="Examen3Ramon_Loria.Placas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdPlaca" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar.">
        <Columns>
            <asp:BoundField DataField="IdPlaca" HeaderText="IdPlaca" ReadOnly="True" SortExpression="IdPlaca" />
            <asp:BoundField DataField="NumPlaca" HeaderText="NumPlaca" SortExpression="NumPlaca" />
            <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" />
            <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prueba %>" DeleteCommand="DELETE FROM [Placa] WHERE [IdPlaca] = @IdPlaca" InsertCommand="INSERT INTO [Placa] ([NumPlaca], [IdUsuario], [Monto]) VALUES (@NumPlaca, @IdUsuario, @Monto)" ProviderName="<%$ ConnectionStrings:Prueba.ProviderName %>" SelectCommand="SELECT [IdPlaca], [NumPlaca], [IdUsuario], [Monto] FROM [Placa]" UpdateCommand="UPDATE [Placa] SET [NumPlaca] = @NumPlaca, [IdUsuario] = @IdUsuario, [Monto] = @Monto WHERE [IdPlaca] = @IdPlaca">
        <DeleteParameters>
            <asp:Parameter Name="IdPlaca" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NumPlaca" Type="String" />
            <asp:Parameter Name="IdUsuario" Type="Int32" />
            <asp:Parameter Name="Monto" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NumPlaca" Type="String" />
            <asp:Parameter Name="IdUsuario" Type="Int32" />
            <asp:Parameter Name="Monto" Type="Decimal" />
            <asp:Parameter Name="IdPlaca" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
