<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PaymentDetails.aspx.cs" Inherits="BikesWebApp.PaymentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="container">
    <h2>Payment Details</h2>
        <table class="form">
            <tr>
                <td>Payment Type</td>
                <td>
                    <asp:DropDownList ID="ddlPaymentType" runat="server" CssClass="form-control">
                        <asp:ListItem Text="--Select Payment Type--" Value=""></asp:ListItem>
                        <asp:ListItem Text="Credit Card" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Debit Card" Value="2"></asp:ListItem>
                    </asp:DropDownList></td>
                <td>
                    <asp:RequiredFieldValidator runat="server" ID="rfvPaymentType" ForeColor="Red" Display="Dynamic"
                        ControlToValidate="ddlPaymentType" ErrorMessage="Please select payment type" /></td>
            </tr>
            <tr>
                <td>Card Number</td>
                <td><asp:TextBox ID="txtCardNumber" MaxLength="16" runat="server" CssClass="form-control" placeholder="16 Digits Card Number" /></td>
                <td> <asp:RequiredFieldValidator runat="server" ID="rfvCardNumber" ForeColor="Red" Display="Dynamic"
                ControlToValidate="txtCardNumber" ErrorMessage="Please enter 16 digit card number" /></td>
            </tr>
            <tr>
                <td>CVV</td>
                <td><asp:TextBox ID="txtCVV" MaxLength="3" runat="server" CssClass="form-control" placeholder="Enter CVV Number (CVV)" /></td>
                <td><asp:RequiredFieldValidator runat="server" ID="rfvCVV" ForeColor="Red" Display="Dynamic"
                ControlToValidate="txtCVV" ErrorMessage="Please enter 3 digit CVV number printed on card" /></td>
            </tr>
            <tr>
                <td>Expiry Month Year</td>
                <td><asp:TextBox ID="txtExpiryMonth" MaxLength="7" runat="server" CssClass="form-control" placeholder="Enter Expiry Mont Year (DD-YYYY)" /></td>
                <td><asp:RequiredFieldValidator runat="server" ID="rfvExpiryMonth" ForeColor="Red" Display="Dynamic"
                ControlToValidate="txtExpiryMonth" ErrorMessage="Please enter expiry month and year printed card number" /></td>
            </tr>
            <tr>
                <td>Name On Card</td>
                <td><asp:TextBox ID="txtNameOnCard" runat="server" CssClass="form-control" placeholder="Name On Card" /></td>
                <td><asp:RequiredFieldValidator runat="server" ID="rfvNameOnCard" ForeColor="Red" Display="Dynamic"
                ControlToValidate="txtNameOnCard" ErrorMessage="Please enter your name printed card number" /></td>
            </tr>
            <tr>
                <td>Transaction Amount</td>
                <td><asp:TextBox ID="txtAmount" ReadOnly="true" runat="server" CssClass="form-control" placeholder="Amount Rs." /></td>
                <td><asp:RequiredFieldValidator runat="server" ID="rfvAmount" ForeColor="Red" Display="Dynamic"
                ControlToValidate="txtAmount" ErrorMessage="Please enter your transaction amount" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnPayment" runat="server" Text="Make Payment" CssClass="btn btn-primary btn-block" OnClick="btnPayment_Click" />
                </td>
                <td colspan="2"><a href="SearchMedicine.aspx" class="btn btn-primary btn-block">Back To Search Medicine</a></td>
                
            </tr>
        </table>
    </div>
</asp:Content>
