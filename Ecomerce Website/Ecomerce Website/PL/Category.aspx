<%@ Page Title="" Language="C#" MasterPageFile="~/PL/MainMaster.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="Ecomerce_Website.Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HomeBanner" runat="server">
    <section class="login_box_area p_120">
        <div class="container">
            <div class="row">

                <div class="col-lg-12">
                    <div >
                        <h3>Add Category</h3>
                        <div class="col-md-12 form-group">
                            <table>
                                <tr>
                                    <td class="col-md-6 " style="left: 0px; top: 0px">
                                        <asp:TextBox ID="txt_catgory_name" class="form-control w-50 text-center" style="margin:auto;" name="name" placeholder="Category" runat="server" TextMode="SingleLine" ValidationGroup="login"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Strikeout="False" Font-Bold="True" ValidationGroup="login" ControlToValidate="txt_catgory_name" Font-Size="X-Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>

                            </table>
                        </div>

                        <div class="col-md-12 text-center">
                            <asp:Button type="submit" value="submit" ID="btn_login" class="btn submit_btn center-block" style="margin:auto;" runat="server" Text="Log In" ValidationGroup="login" />
                            <%--<button type="submit" value="submit" class="btn submit_btn">Log In</button>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <asp:GridView ID="gv_category" runat="server" CssClass="center-block" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
