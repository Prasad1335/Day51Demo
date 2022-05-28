<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="Day51Demo.Users.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Users - Create</title>
    <link rel="stylesheet" href="/css/style.css" />
    <style type="text/css">
        .auto-style2 {
            height: 48px;
        }
        .auto-style3 {
            height: 48px;
            width: 262px;
        }
        .auto-style4 {
            width: 262px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <p>Create New User</p>
        <div class="status-message">
            <asp:Label runat="server" ID="LabelStatus" Visible="false" />
        </div>
        <div>

            <table class="form-block">
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" ID="LabelFirstName">First Name</asp:Label></td>
                    <td class="auto-style3">
                        <asp:TextBox runat="server" ID="TextBoxFirstName" placeholder="Enter First Name"
                            MaxLength="50"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelLastName">Last Name</asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" ID="TextBoxLastName" placeholder="Enter Last Name"
                            MaxLength="50"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelDateOfBirth">Date Of Birth</asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" Class="dob" TextMode="Date" ID="TextBoxDateOfBirth"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelPan">Pan</asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" ID="TextBoxPan" placeholder="Enter Pan"
                            MaxLength="50"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelAddress">Address</asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" ID="TextBoxAddress" placeholder="Enter Address"
                            MaxLength="250"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="GenderLabel" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td class="auto-style4">
                        <asp:RadioButton ID="MaleRadioButton" Text="Male" runat="server" GroupName="Gender" />
                        <asp:RadioButton ID="RadioButton1" Text="Female" runat="server" GroupName="Gender" />
                        <asp:RadioButton ID="OtherRadioButton" Text="Other" runat="server" GroupName="Gender" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelMobileNumber">MobileNumber</asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" CssClass="inbox" TextMode="Number" ID="TextBoxMobileNumber" placeholder="Enter MobileNumber"
                            MaxLength="250"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelEmail">Email</asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" CssClass="inbox" TextMode="Email" ID="TextBoxEmail" placeholder="Enter Email"
                            MaxLength="100"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelComment">Comment</asp:Label></td>
                    <td class="auto-style4">
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="TextBoxComment" placeholder="Enter Comment"
                            MaxLength="250"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelDepartmentRefId" runat="server" Text="DepartmentRefId"></asp:Label>
                    </td>
                    <td class="auto-style4">
                       <asp:DropDownList ID="DropDownListDepartmentRefId" CssClass="inbox" DataTextField="Name" DataValueField="Id" runat="server" DataSourceID="SqlDataSource1">
                           </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserManagementConnection %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td class="auto-style4">
                        <asp:Button runat="server" ID="ButtonCreate" Text="Create" OnClick="ButtonCreate_OnClick" />
                        <a style="float: right" href="Default.aspx">
                            <input type="button" value="Back to Listing" /></a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

