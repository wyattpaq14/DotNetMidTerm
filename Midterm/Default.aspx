<%@ Page Title="" Language="C#" MasterPageFile="~/midterm.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Midterm.Default" %>

<%--
dont really know what this is for
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
--%>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--header--%>

    <div class="page-header">
        <h1 class="col-md-offset-2">Please sign the form to receive a free $500 giftcard!</h1>
    </div>


    <%--define form--%>

    <%--state--%>
    <div class="form-group col-lg-8">
        <asp:Label ID="lblState" runat="server" Text="State" CssClass="col-lg-2 control-label"></asp:Label>
        <div>
            <asp:DropDownList ID="ddlState" runat="server" DataSourceID="SqlDataSource1" DataTextField="state_full_name" DataValueField="state_id"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SE256_PaquinConnectionString %>" SelectCommand="states_getall" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ddlState"></asp:RequiredFieldValidator>
        </div>
    </div>


    <%--name--%>
    <div class="form-group col-lg-8">
        <asp:Label ID="lblName" runat="server" Text="Name (Required)" CssClass="col-lg-2 control-label"></asp:Label>
        <div>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Name is required!" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        </div>

    </div>
    <%--email--%>
    <div class="form-group col-lg-8">
        <asp:Label ID="lblEmail" runat="server" Text="Email (Required)" CssClass="col-lg-2 control-label"></asp:Label>
        <div>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is required!" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email is invalid!" ControlToValidate="txtEmail" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"></asp:RegularExpressionValidator>
        </div>
    </div>

    <%--confirm email--%>
    <div class="form-group col-lg-8">
        <asp:Label ID="lblConfirmEmail" runat="server" Text="Email Confirm (Required)" CssClass="col-lg-2 control-label"></asp:Label>
        <div>
            <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmEmail" runat="server" ErrorMessage="Confirm email is required!" ControlToValidate="txtConfirmEmail"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvConfirmEmail" runat="server" ErrorMessage="Emails aren't the same!" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail"> </asp:CompareValidator>
        </div>
    </div>
    <%--comments--%>
    <div class="form-group col-lg-8">
        <asp:Label ID="lblComments" runat="server" Text="Comments (Required)" CssClass="col-lg-2 control-label"></asp:Label>
        <div>
            <asp:TextBox ID="txtComments" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvComments" runat="server" ErrorMessage="Comments are required!" ControlToValidate="txtComments"></asp:RequiredFieldValidator>
        </div>
    </div>

    <%--agree--%>
    <div class="form-group col-lg-8">
        <asp:Label ID="Label6" runat="server" Text="Do you agree to sign?" CssClass="col-lg-2 control-label"></asp:Label>
        <div>
            <asp:CheckBox ID="cbAgree" runat="server" CssClass="col-lg-2 control-label" />
        </div>
    </div>
    <%--submit/cancel--%>
    <div class="form-group col-lg-8">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="false" />
    </div>
    <%--final validation result printout--%>
</asp:Content>
