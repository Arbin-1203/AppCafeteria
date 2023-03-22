<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="AppCafeteria.Inicio" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>       
            <table style="width: 100%; font-size: x-large;" align="center">
                <tr>
                    <td class="auto-style1">Cafeteria</td>                
                </tr>             
            </table>
        </div>
        <div>
            <table style="width: 100%;">
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="172px" ImageUrl="~/1529402043_039778_1529402207_noticia_normal.jpg" Width="240px" />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Productos" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Bclientes" runat="server" OnClick="Bclientes_Click" Text="Clientes" />
                        <br />
                    </td>
    
                </tr>              
            </table>
        </div>

    </form>
</body>
</html>
