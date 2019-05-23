<%@ Page Title="Register" Language="C#" MasterPageFile="~/PL/MainMaster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Ecomerce_Website.PL.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <!--================Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Login/Register</h2>
                    <div class="page_link">
                        <a href="index.html">Home</a>
                        <a href="registration.html">Register</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Home Banner Area =================-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HomeBanner" runat="server">


    <!--================register Box Area =================-->
    <section class="login_box_area p_120">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login_box_img">
                        <img class="img-fluid" src="img/login.jpg" alt="">
                        <div class="hover">
                            <h4>New to our website?</h4>
                            <p>There are advances being made in science and technology everyday, and a good example of this is the</p>
                            <a class="main_btn" href="#">Create an Account</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login_form_inner reg_form">
                        <h3>Create an Account</h3>
                        <form class="row login_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                            <div class="col-md-12 form-group">
                                <%--<input type="text" class="form-control" id="name" name="name" placeholder="Name">--%>
                                <table>
                                    <tr>
                                        <td class="col-md-12 form-group">
                                            <asp:TextBox ID="txt_username" class="form-control" name="name" placeholder="User Name" runat="server" TextMode="SingleLine" ValidationGroup="login"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Font-Strikeout="True" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_username" Display="Dynamic" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-12 form-group">
                                <%--<input type="text" class="form-control" id="name" name="name" placeholder="Name">--%>
                                <table>
                                    <tr>
                                        <td class="col-md-12 form-group">
                                            <asp:TextBox ID="txt_Name" class="form-control" name="name" placeholder="Name" runat="server" TextMode="SingleLine" ValidationGroup="login"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" Font-Strikeout="True" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_Name" Display="Dynamic" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-12 form-group">
                                <%--<input type="text" class="form-control" id="name" name="name" placeholder="Name">--%>
                                <table>
                                    <tr>
                                        <td class="col-md-12 form-group">
                                            <asp:TextBox ID="txt_address" class="form-control" name="name" placeholder="Address" runat="server" TextMode="SingleLine" ValidationGroup="login"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" Font-Strikeout="True" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_username" Display="Dynamic" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-12 form-group">
                                <%--<input type="text" class="form-control" id="name" name="name" placeholder="Name">--%>
                                <table>
                                    <tr>
                                        <td class="col-md-12 form-group">
                                            <asp:TextBox ID="txt_birth_date" class="form-control" name="name" runat="server" TextMode="Date" ValidationGroup="login"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" Font-Strikeout="True" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_birth_date" Display="Dynamic" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-12 form-group">
                                <%--<input type="text" class="form-control" id="name" name="name" placeholder="Name">--%>
                                <table>
                                    <tr>
                                        <td class="col-md-12 form-group">
                                            <asp:TextBox ID="txt_phone" class="form-control" name="name" placeholder="Phone Number" runat="server" TextMode="Phone" ValidationGroup="login"></asp:TextBox>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                       <tr>
                                        <td class="col-md-12 form-group">
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ValidationExpression="^([0-9]{10})$" runat="server" ErrorMessage="invailed phne number" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_phone" Enabled="True" Font-Size="Large" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-12 form-group">
                                <%--<input type="email" class="form-control" id="email" name="email" placeholder="Email Address">--%>
                                <table>
                                    <tr>
                                        <td class="col-md-12 form-group">
                                            <asp:TextBox ID="txt_email" class="form-control" name="name" placeholder="Email Address" runat="server" TextMode="Email" ValidationGroup="login"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="invailed email" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_email" Enabled="True" Font-Size="Large" ForeColor="Red"></asp:RegularExpressionValidator>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Strikeout="True" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_email" Display="Dynamic" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="col-md-12 form-group">
                                <table>
                                    <tr>
                                        <td class="col-md-12 form-group">
                                            <asp:TextBox ID="txt_password" class="form-control" name="name" placeholder="Password" runat="server" TextMode="Password" ValidationGroup="login"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" Font-Strikeout="True" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_password" Display="Dynamic" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <%--<input type="text" class="form-control" id="password" name="password" placeholder="Password">--%>
                            </div>
                            <div class="col-md-12 form-group">
                                <table>
                                    <tr>
                                        <td class="col-md-12 form-group">
                                            <asp:TextBox ID="txt_conf_pwd" class="form-control" name="pass" placeholder="Confirm password" runat="server" TextMode="Password" ValidationGroup="login"></asp:TextBox>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="passwords not matches" Font-Strikeout="False" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_conf_pwd" Display="Dynamic" Font-Size="Large" ForeColor="Red" ControlToCompare="txt_password"></asp:CompareValidator>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" Font-Strikeout="True" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_conf_pwd" Display="Dynamic" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                                <%--<input type="password" class="form-control" id="pass" name="pass" placeholder="Confirm password">--%>
                            </div>
                            <div class="col-md-12 form-group">
                                <table>
                                    <tr>
                                        <td class="col-md-12 form-group">
                                            <asp:FileUpload ID="img_upload" accept="image/*" class="form-control" runat="server" ValidationGroup="login" />
                                        </td>
                                        </tr>
                                    <tr>
                                        <td>
                                            <asp:RegularExpressionValidator ID="RegExValFileUploadFileType" runat="server" ForeColor="Red"
                                                ControlToValidate="img_upload" ErrorMessage="Only .jpg,.png,.jpeg,.gif Files are allowed" Font-Bold="True" Font-Size="Medium"
                                                ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                </table>
                                <%--<input type="password" class="form-control" id="pass" name="pass" placeholder="Confirm password">--%>
                            </div>

                            <div class="col-md-12 form-group">
                                <div class="creat_account">
                                    <asp:CheckBox ID="cb_login" runat="server" />
                                    <%--<input type="checkbox" id="f-option2" name="selector">--%>
                                    <label for="f-option2">Keep me logged in</label>
                                </div>
                            </div>
                            <div class="col-md-12 form-group">
                              
                                <asp:Button ID="btn_register" class="btn submit_btn" runat="server" Text="Register" OnClick="btn_register_Click" ValidationGroup="login" />
                                <%--<button type="submit" value="submit" class="btn submit_btn">Register</button>--%>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Login Box Area =================-->
</asp:Content>
