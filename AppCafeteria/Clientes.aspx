<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="AppCafeteria.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
            background-color: #99FF99;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table style="width: 100%;">
                <tr>
                    <td class="auto-style1">Clientes</td>                
                </tr>             
            </table>
        </div>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cedula" DataSourceID="SQLCLIENTE" ForeColor="#333333" GridLines="None" Width="195px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="cedula" HeaderText="cedula" ReadOnly="True" SortExpression="cedula" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SQLCLIENTE" runat="server" ConnectionString="<%$ ConnectionStrings:cafeteriaConnectionString3 %>" DeleteCommand="DELETE cliente WHERE Cedula = @Cedula" InsertCommand="INSERT INTO cliente (Cedula, Nombre, Edad) VALUES (@Cedula, @Nombre, @Edad)" ProviderName="<%$ ConnectionStrings:cafeteriaConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [cliente]" UpdateCommand="UPDATE cliente SET Nombre = @Nombre, Edad = @Edad WHERE Cedula = @Cedula">
            <DeleteParameters>
                <asp:ControlParameter ControlID="TCedula" Name="Cedula" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="TCedula" Name="Cedula" PropertyName="Text" />
                <asp:ControlParameter ControlID="TNombre" Name="Nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="TEdad" Name="Edad" PropertyName="Text" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="TNombre" Name="Nombre" PropertyName="Text" />
                <asp:ControlParameter ControlID="TEdad" Name="Edad" PropertyName="Text" />
                <asp:ControlParameter ControlID="TCedula" Name="Cedula" PropertyName="Text" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        Cedula:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TCedula" runat="server"></asp:TextBox>
        <br />
        <br />
        Nombre:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TNombre" runat="server"></asp:TextBox>
        <br />
        <br />
        Edad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TEdad" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Borrar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="height: 26px" Text="Modificar" />
        <br />
    </form>
</body>
</html>
