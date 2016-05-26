<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="comp2007_w3_lab_2.Contacts" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Contact Info</h3>
                    </div>
                    <div class="panel-body">

                        <address>
                            <strong>Rutvik</strong><br>
                            1355 Market Street, Suite 900<br>
                            San Francisco, CA 94103<br>
                            <abbr title="Phone">P:</abbr>
                            (123) 456-7890
                        </address>

                        <address>
                            <strong>Rutvik Patel</strong><br>
                            <a href="mailto:#">first.last@example.com</a>
                        </address>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <h1>Contact</h1>
                <div class="form-group">
                    <label class="control-label" for="First Name">First Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="FirstNameTextbox" placeholder="First Name" reqired="true" ControlToValidate="FirstNameTextbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FirstNameTextbox" SetFocusOnError="true" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="Last Name">Last Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="LastNameTextBox" placeholder="Last Name" reqired="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="LastNameTextbox" SetFocusOnError="true" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">
                    <label class="control-label" for="Email">E-mail</label>
                    <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="EmailTextBox" placeholder="Email" reqired="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" SetFocusOnError="true" Display="Dynamic" CssClass="alert-danger" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">
                    <label class="control-label" for="Contact">Contact</label>
                    <asp:TextBox runat="server" TextMode="Phone" CssClass="form-control" ID="Contact" placeholder="Contact" reqired="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Contact" SetFocusOnError="true" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>

                </div>
                <div class="form-group">
                    <label class="control-label" for="Message">Message</label>
                    <asp:TextBox runat="server" TextMode="MultiLine" Columns="3" Rows="3" CssClass="form-control" ID="TextBox1" placeholder="Message" reqired="true"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" SetFocusOnError="true" Display="Dynamic" CssClass="alert-danger"></asp:RequiredFieldValidator>

                </div>
                <div class="text-right">
                    <a href="Default.aspx" class="btn btn-warning btn-lg" id="Cancel">Cancel</a>
                    <asp:Button runat="server" CssClass="btn btn-primary btn-lg" ID="Submit" Text="Send" OnClick="Submit_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
