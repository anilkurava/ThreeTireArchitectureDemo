<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Emp.aspx.cs" Inherits="presentationlayer.Emp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            width: 166px;
            font-size: large;
            height: 35px;
        }
        .auto-style7 {
            height: 35px;
        }
        .auto-style3 {
            width: 166px;
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6"><strong>EMPLOYEE ID</strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TXTID" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>EMPLOYEE NAME</strong></td>
                    <td>
                        <asp:TextBox ID="TXTNAME" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>DESIGNATION</strong></td>
                    <td>
                        <asp:DropDownList ID="DDESG" runat="server" CssClass="auto-style5" Width="177px">
                            <asp:ListItem>--SELECT--</asp:ListItem>
                            <asp:ListItem>PROJECT MANAGER</asp:ListItem>
                            <asp:ListItem>TEAM LEADER</asp:ListItem>
                            <asp:ListItem>CEO</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>SALARY</strong></td>
                    <td>
                        <asp:TextBox ID="TXTSAL" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>EMAIL</strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TXTEMAIL" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>MOBILE</strong></td>
                    <td>
                        <asp:TextBox ID="TXTMOBILE" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>QUALIFICATION</strong></td>
                    <td>
                        <asp:DropDownList ID="DQUAL" runat="server" CssClass="auto-style5">
                            <asp:ListItem>--SELECT--</asp:ListItem>
                            <asp:ListItem>MBA</asp:ListItem>
                            <asp:ListItem>MTECH</asp:ListItem>
                            <asp:ListItem>BTECH</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><strong>MANAGER </strong></td>
                    <td>
                        <asp:TextBox ID="TXTMANAGER" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" OnClick="Button1_Click" Text="SAVE" />
                        <span class="auto-style5">&nbsp;&nbsp; </span>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Text="RESET" OnClick="Button2_Click" />
                        </strong></td>
                </tr>
            </table>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Eid">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("eid") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                       <asp:Label ID="Label1" runat="server" Text='<%# Bind("eid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="employee">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("empname") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("empname") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="designation">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("designation") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("designation") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="salary">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("salary") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("salary") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="mobile">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("mobile") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("mobile") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="qualification">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("qualification") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("qualification") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="manager">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("manager") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("manager") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="cmdedit" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Edit" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete" ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" CausesValidation="false" CommandName="cmddelete" CommandArgument="<%#((GridViewRow)Container).RowIndex %>" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
    </form>
</body>
</html>
