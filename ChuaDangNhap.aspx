<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ChuaDangNhap.aspx.cs" Inherits="ChuaDangNhap" Title="Untitled Page" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <p>Bạn chưa đang nhập, vui lòng <a href="DangNhap.aspx">đăng nhập</a> để sử dụng tiếp</p>

    <td colspan="2">
        <b><font color="#3333CC">LIÊN HỆ QUA MAIL THÔNG QUA FROM SAU:</font></b>
        <form class="form-validate" id="emailForm" name="emailForm" method="post" action="/index.php?option=com_contact&amp;view=contact&amp;id=1&amp;Itemid=22">
        <div class="contact_email">
            <label for="contact_name">
                &nbsp;Tên bạn:
            </label>
            <br>
            <input type="text" value="" class="inputbox" style="width: 340px;" id="contact_name"
                name="name">
            <br>
            <label for="contact_email" id="contact_emailmsg">
                &nbsp;Địa chỉ email:
            </label>
            <br>
            <input type="text" maxlength="100" class="inputbox required validate-email" value=""
                style="width: 340px;" name="email" id="contact_email">
            <br>
            <label for="contact_subject">
                &nbsp;Tiêu đề thông điệp:
            </label>
            <br>
            <input type="text" value="" class="inputbox" style="width: 340px;" id="contact_subject"
                name="subject">
            <br>
            <br>
            <label for="contact_text" id="contact_textmsg">
                &nbsp;Nội dung thông điệp:
            </label>
            <br>
            <textarea class="inputbox required" id="contact_text" name="text" rows="10" style="width: 340px;"></textarea>
            <br>
            <br>
            <button type="submit">
                Gửi</button><br>
        </div>
        <input type="hidden" value="com_contact" name="option">
        <input type="hidden" value="contact" name="view">
        <input type="hidden" value="1" name="id">
        <input type="hidden" value="submit" name="task">
        <input type="hidden" value="1" name="931a584e264874441f23277e1110b80b">
        </form>
        <br>
    </td>
</asp:Content>

