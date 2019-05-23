<%@ Page Title="Login" Language="C#" MasterPageFile="~/PL/MainMaster.Master" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="Ecomerce_Website.LoginUser" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
        <!--================Home Banner Area =================-->
	<section class="banner_area">
		<div class="banner_inner d-flex align-items-center">
			<div class="container">
				<div class="banner_content text-center">
					<h2>Login/Register</h2>
					<div class="page_link">
						<a href="index.html">Home</a>
						<a href="login.html">Login</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Home Banner Area =================-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HomeBanner" runat="server">

        <!--================Login Box Area =================-->
	<section class="login_box_area p_120">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="img/login.jpg" alt="">
						<div class="hover">
							<h4>New to our website?</h4>
							<p>There are advances being made in science and technology everyday, and a good example of this is the</p>
                             <asp:LinkButton  class="main_btn" ID="btn_register" runat="server">Create an Account</asp:LinkButton>
							<%--<a class="main_btn" href="registration.html">Create an Account</a>--%>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Log in to enter</h3>
                                 <form class="row login_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                                  
                                                    <div class="col-md-12 form-group" >
                                                        <%--<input type="text" class="form-control" id="name" name="name" placeholder="Username">--%>
                                                     <table>
                                                        <tr> 
                                                            <td class="col-md-12 form-group">
                                                                <asp:TextBox ID="txt_user_name" class="form-control" name="name" placeholder="Username" runat="server" TextMode="SingleLine" ValidationGroup="login"></asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Strikeout="False" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_user_name" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                                            </td>
                                                          </tr>
                                                         </table>
                                                    </div>
                                                  <div class="col-md-12 form-group">
                                                        <%--<input type="text" class="form-control" id="name" name="name" placeholder="Username">--%>
                                                     <table>
                                                        <tr> 
                                                            <td class="col-md-12 form-group">
                                                                 <asp:TextBox ID="txt_password" class="form-control" name="name" placeholder="Password" runat="server" TextMode="Password" ValidationGroup="login"></asp:TextBox>
                                                                <%--<asp:TextBox ID="TextBox1" class="form-control" name="name" placeholder="Username" runat="server" TextMode="SingleLine" ValidationGroup="login"></asp:TextBox>--%>
                                                            </td>
                                                            <td>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Font-Strikeout="True" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_password" Display="Dynamic" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                                            </td>
                                                          </tr>
                                                         </table>
                                                    </div>
                                      <%--   <div class="col-md-12 form-group">
                                             <%--<input type="text" class="form-control" id="name" name="name" placeholder="Password">--%>
                                         <%--</div>--%>

                                         <div class="col-md-12 form-group">
                                             <div class="creat_account">
                                                 <%--<input type="checkbox" id="f-option2" name="selector">--%>
                                                 <asp:CheckBox ID="cb_remember_me" name="selector" runat="server" />
                                                 <label for="f-option2">Keep me logged in</label>
                                             </div>
                                         </div>
                                         <div class="col-md-12 form-group">
                                                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                             <%-- <a href="#">forgot password?</a>--%>
                                         </div>
                                            <div class="col-md-12 form-group">
                                         <asp:Label ID="lb_invaild_user" runat="server" Text="" ForeColor="Red" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                         <%-- <a href="#">forgot password?</a>--%>
                                     </div>
                                     <div class="col-md-12 form-group">
                                         <asp:Button type="submit" value="submit" ID="btn_login" class="btn submit_btn" runat="server" Text="Log In" OnClick="btn_login_Click" ValidationGroup="login" />
                                         <%--<button type="submit" value="submit" class="btn submit_btn">Log In</button>--%>
                                     </div>
                                         <div class="col-md-12 form-group">
                                             <asp:LinkButton ID="btn_forget_password" runat="server">Forgot Password?</asp:LinkButton>
                                             <%-- <a href="#">forgot password?</a>--%>
                                         </div>
                              
                                 </form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->
	
</asp:Content>
