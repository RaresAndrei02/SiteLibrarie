<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="SiteLibrarie.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

        <div class="row">

            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/imgs/adminuser.png" width="150px" />  
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h3><b>Logare Admin</b></h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Username Admin</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Username"></asp:TextBox>
                                </div>
                                
                            </div>
                       </div>
                       <div class="row">
                            <div class="col">
                                <label>Parola</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Parola" TextMode="Password"></asp:TextBox>
                                </div>
                                
                            </div>
                      </div> 
                      <div class="row">
                            <div class="col">                              
                                <div class="form-group">
                                    <asp:Button ID="Button1" runat="server" Text="Login" Class="btn btn-primary btn-block btn-lg" OnClick="Button1_Click" />
                                </div>                               
                            </div>
                      </div>  
                      
                </div>  
            </div>

                 </br>
                 <a href="Homepage.aspx"><b><< Inapoi acasa</b></a>
                 </br>
                 </br>
                
        </div>
      </div>
   </div>

</asp:Content>
