<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Day51Demo.Users.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User - Update</title>
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>

    <form id="form1" runat="server">
        <p>Update  User</p>
        <div class="status-message">
            <asp:Label runat="server" ID="LabelStatus" Visible="false" />
        </div>
        <div>

            <table class="form-block">
                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelFirstName">First Name</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxFirstName" placeholder="Enter First Name"
                            MaxLength="50"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelLastName">Last Name</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxLastName" placeholder="Enter Last Name"
                            MaxLength="50"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelDateOfBirth">Date Of Birth</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" Class="dob" TextMode="Date" ID="TextBoxDateOfBirth"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelPan">Pan</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxPan" placeholder="Enter Pan"
                            MaxLength="50"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelAddress">Address</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" ID="TextBoxAddress" placeholder="Enter Address"
                            MaxLength="250"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="GenderLabel" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <td>
                        <asp:RadioButtonList ID="RadioButtonListGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1">Male</asp:ListItem>
                            <asp:ListItem Value="2">Female</asp:ListItem>
                            <asp:ListItem Value="3">Other</asp:ListItem>
                        </asp:RadioButtonList>

                    </td>
              <%--          <asp:RadioButton ID="MaleRadioButton" Text="Male" runat="server" GroupName="Gender" />
                        <asp:RadioButton ID="RadioButton1" Text="Female" runat="server" GroupName="Gender" />
                        <asp:RadioButton ID="OtherRadioButton" Text="Other" runat="server" GroupName="Gender" />--%>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelMobileNumber">MobileNumber</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" CssClass="inbox" TextMode="Number" ID="TextBoxMobileNumber" placeholder="Enter MobileNumber"
                            MaxLength="250"></asp:TextBox>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelEmail">Email</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" CssClass="inbox" TextMode="Email" ID="TextBoxEmail" placeholder="Enter Email"
                            MaxLength="100"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" ID="LabelComment">Comment</asp:Label></td>
                    <td>
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="TextBoxComment" placeholder="Enter Comment"
                            MaxLength="250"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LabelDepartmentRefId" runat="server" Text="DepartmentRefId"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownListDepartmentRefId" CssClass="inbox" DataTextField="Text" DataValueField="Value" runat="server">
 
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button runat="server" ID="ButtonUpdate" Text="Update" OnClick="ButtonUpdate_Click" />
                        <a style="float: right" href="Default.aspx">
                            <input type="button" value="Back to Listing" /></a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
