<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra2.Master" AutoEventWireup="true" CodeBehind="UsersPage.aspx.cs" Inherits="Examen3Ramon_Loria.UsersPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar.">
        <Columns>
            <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" />
            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
            <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Prueba %>" DeleteCommand="DELETE FROM [Usuarios] WHERE [IdUsuario] = @IdUsuario" InsertCommand="INSERT INTO [Usuarios] ([Usuario], [Clave], [Nombre], [Apellido]) VALUES (@Usuario, @Clave, @Nombre, @Apellido)" ProviderName="<%$ ConnectionStrings:Prueba.ProviderName %>" SelectCommand="SELECT [IdUsuario], [Usuario], [Clave], [Nombre], [Apellido] FROM [Usuarios]" UpdateCommand="UPDATE [Usuarios] SET [Usuario] = @Usuario, [Clave] = @Clave, [Nombre] = @Nombre, [Apellido] = @Apellido WHERE [IdUsuario] = @IdUsuario">
        <DeleteParameters>
            <asp:Parameter Name="IdUsuario" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Usuario" Type="String" />
            <asp:Parameter Name="Clave" Type="String" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Apellido" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Usuario" Type="String" />
            <asp:Parameter Name="Clave" Type="String" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Apellido" Type="String" />
            <asp:Parameter Name="IdUsuario" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
