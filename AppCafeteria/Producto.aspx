<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="AppCafeteria.Producto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            background-color: #99FF99;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 174px;
            text-align: center;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <table style="width: 100%; font-size: x-large;" align="center">
                <tr>
                    <td class="auto-style1">Productos</td>                
                </tr>             
            </table>
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <div class="auto-style4">
                        <br />
                    </div>
                    <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ID" DataSourceID="SQLPRODUCTO" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="306px">
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                                <asp:BoundField DataField="IVA" HeaderText="IVA" SortExpression="IVA" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
                        </asp:GridView>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:SqlDataSource ID="SQLPRODUCTO" runat="server" ConnectionString="<%$ ConnectionStrings:cafeteriaConnectionString %>" DeleteCommand="DELETE Producto WHERE ID = @ID" InsertCommand="INSERT INTO Producto (ID, Nombre, Precio, IVA) VALUES (@ID, @Nombre, @Precio, @IVA)" ProviderName="<%$ ConnectionStrings:cafeteriaConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [producto]">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="TID" Name="ID" PropertyName="Text" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="TID" Name="ID" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TNombre" Name="Nombre" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TPrecio" Name="Precio" PropertyName="Text" />
                                <asp:ControlParameter ControlID="TIVA" Name="IVA" PropertyName="Text" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="auto-style5">
                        <br />
                        <br />
                        ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TID" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Nombre:&nbsp;&nbsp;
                        <asp:TextBox ID="TNombre" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Precio:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TPrecio" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        IVA:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TIVA" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Agregar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Borrar" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </div>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
