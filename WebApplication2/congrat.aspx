<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="congrat.aspx.cs" Inherits="WebApplication2.Cỏngat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url(../Theme/backgrounglogin.jpg);
        }
        .container{
            display:flex;
            justify-content:center;
            width:auto;
            align-items:center;
            flex-direction:column;
            border: 1px solid white;
            color: white;
            background-color: rgba(0,0,0,0.3 );
            border-radius: 15px;
        }
        .gridViewDiv{
            margin-top:50px;
        }
        .Button{
            width:100px;
            height:30px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container"> 
            <h1 style="text-align:center;">Bạn đã đăng nhập thành công</h1>
            <div class="inputDiv">
                <p class="label">ID:
                <asp:TextBox ID="tbID" runat="server" style="margin-left: 75px;"></asp:TextBox>
            </p>
                <p class="label">Tên diện thoại:
                <asp:TextBox ID="tbTenDt" runat="server"></asp:TextBox>
            </p>
            <p class="label">Giá nhập:
                <asp:TextBox ID="tbGiaNhap" runat="server" style="margin-left: 35px"></asp:TextBox>
            </p >
            <p class="label">Giá bán:
                <asp:TextBox ID="tbGiaBan" runat="server" style="margin-left:40px"></asp:TextBox>
            </p>
                <div style="margin-left:80px">
                    <asp:Button ID="bHuy" runat="server" Text="Hủy " class="Button" OnClick="bHuy_Click" />
                    <asp:Button ID="bThem" runat="server" Text="Ghi" class="Button" OnClick="bThem_Click" />
                </div>
            </div>
            <div class="gridViewDiv">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="254px" HorizontalAlign="Center" Width="550px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-right: 0px; margin-bottom: 32px;">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="TenDT" HeaderText="TenDT" SortExpression="TenDT" />
                <asp:BoundField DataField="GiaNhap" HeaderText="GiaNhap" SortExpression="GiaNhap" />
                <asp:BoundField DataField="GiaBan" HeaderText="GiaBan" SortExpression="GiaBan" />
                <asp:CommandField ButtonType="Button" HeaderText="Option" EditText="Sửa" ShowEditButton="True" DeleteText="Xóa" ShowDeleteButton="True" UpdateText="Cập nhật" CancelText="Hủy" />
            </Columns>
                    <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShopConnectionString2 %>" SelectCommand="SELECT [ID], [GiaBan], [GiaNhap], [TenDT] FROM [HangHoa]" InsertCommand="INSERT INTO HangHoa(GiaNhap, GiaBan, TenDT, ID) VALUES (@GiaNhap, @GiaBan, @TenDT, @ID)" DeleteCommand="DELETE FROM HangHoa WHERE (ID = @ID)" UpdateCommand="UPDATE HangHoa SET ID = @ID, TenDT = @TenDT, GiaNhap = @GiaNhap, GiaBan = @GiaBan where ID = @ID">
            <DeleteParameters>
                <asp:ControlParameter ControlID="tbID" Name="ID" PropertyName="Text" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="tbID" Name="ID" PropertyName="Text" />
                <asp:ControlParameter ControlID="tbTenDt" Name="TenDT" PropertyName="Text" />
                <asp:ControlParameter ControlID="tbGiaNhap" Name="GiaNhap" PropertyName="Text" />
                <asp:ControlParameter ControlID="tbGiaBan" Name="GiaBan" PropertyName="Text" />
            </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="tbID" Name="ID" PropertyName="Text" />
                    <asp:ControlParameter ControlID="tbTenDt" Name="TenDT" PropertyName="Text" />
                    <asp:ControlParameter ControlID="tbGiaNhap" Name="GiaNhap" PropertyName="Text" />
                    <asp:ControlParameter ControlID="tbGiaBan" Name="GiaBan" PropertyName="Text" />
            </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        
    </form>
</body>
</html>
