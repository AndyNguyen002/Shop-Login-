<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
    background-image:url(../Theme/backgrounglogin.jpg);
}

.login {
    background-color: rgba(0,0,0,0.3 );
    width: 500px;
    height: 300px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    border-radius: 15px;
    color: white;
    font-size: 17px;
    border: 1px solid white;
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    width:auto;
    height:700px;
}

.bDangnhap {
    height: 40px;
    width: 100px;
    border: none;
    border-radius: 10px;
    background-color: lightcoral;
    transition-duration: 0.4s;
}

    .bDangnhap:hover {
        background-color: #4CAF50; /* Green */
        color: white;
        cursor: pointer;
    }

.input {
    width: 300px;
    height: 20px;
    margin-right: 30px;
    margin-left: 10px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container"> 
        <h1 style="color: white;">Login</h1>
        <div class="login">
            <span style="margin-bottom: 10px">
                Tài khoản <asp:TextBox class="input" runat="server" ID="tbTaiKhoan" placeholder="Tai khoan"></asp:TextBox>
            </span>

            <span > 
                Mật khẩu <asp:TextBox class="input" runat="server" ID="tbMatKhau" TextMode="Password" placeholder="Mat khau" > </asp:TextBox> <br />
            </span>
            
            <asp:Label style="margin-bottom: 10px; color:red; margin-top:10px" ID="check" runat="server" Text=""></asp:Label>
            
            <asp:Button class="bDangnhap" runat="server" Text="Đăng nhập" ID="bDangNhap" OnClick="bDangNhap_Click"/>
        </div>
    </div>
    </form>
</body>
</html>
