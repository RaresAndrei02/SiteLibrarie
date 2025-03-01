﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="InregistrareUtilizator.aspx.cs" Inherits="SiteLibrarie.InregistrareUtilizator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">

        <div class="row">

            <div class="col-md-8 mx-auto">

                <div class="card">
                    <div class="card-body" id="card">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="imgs/imgs/generaluser.png" width="150px" />
                                </center>
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h3><b>Inregistrare membru nou</b></h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Nume complet</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="NumeComplet" runat="server" placeholder="Nume complet"></asp:TextBox>
                                </div>
                                
                            </div>

                            <div class="col-md-6">
                                <label>Data nasterii</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="DataNastere" runat="server" placeholder="ZZ/LL/AAAA" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>E-mail</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="Email" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                                
                            </div>

                            <div class="col-md-6">
                                <label>Numar de telefon</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="NumarTelefon" runat="server" placeholder="07********" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>Tara</label>
                                <div class="form-group">
                                    <asp:DropDownList cssclass="form-control" ID="Tara" runat="server"> 
                                        <asp:ListItem Text="Selecteaza tara" Value="Selecteaza"/>
                                        <asp:ListItem Text="Afghanistan" Value="Afghanistan" />
                                        <asp:ListItem Text="Albania" Value="Albania" />
                                        <asp:ListItem Text="Algeria" Value="Algeria" />
                                        <asp:ListItem Text="Andorra" Value="Andorra" />
                                        <asp:ListItem Text="Angola" Value="Angola" />
                                        <asp:ListItem Text="Antigua and Barbuda" Value="Antigua and Barbuda" />
                                        <asp:ListItem Text="Argentina" Value="Argentina" />
                                        <asp:ListItem Text="Armenia" Value="Armenia" />
                                        <asp:ListItem Text="Australia" Value="Australia" />
                                        <asp:ListItem Text="Austria" Value="Austria" />
                                        <asp:ListItem Text="Azerbaijan" Value="Azerbaijan" />
                                        <asp:ListItem Text="Bahamas" Value="Bahamas" />
                                        <asp:ListItem Text="Bahrain" Value="Bahrain" />
                                        <asp:ListItem Text="Bangladesh" Value="Bangladesh" />
                                        <asp:ListItem Text="Barbados" Value="Barbados" />
                                        <asp:ListItem Text="Belarus" Value="Belarus" />
                                        <asp:ListItem Text="Belgium" Value="Belgium" />
                                        <asp:ListItem Text="Belize" Value="Belize" />
                                        <asp:ListItem Text="Benin" Value="Benin" />
                                        <asp:ListItem Text="Bhutan" Value="Bhutan" />
                                        <asp:ListItem Text="Bolivia" Value="Bolivia" />
                                        <asp:ListItem Text="Bosnia and Herzegovina" Value="Bosnia and Herzegovina" />
                                        <asp:ListItem Text="Botswana" Value="Botswana" />
                                        <asp:ListItem Text="Brazil" Value="Brazil" />
                                        <asp:ListItem Text="Brunei" Value="Brunei" />
                                        <asp:ListItem Text="Bulgaria" Value="Bulgaria" />
                                        <asp:ListItem Text="Burkina Faso" Value="Burkina Faso" />
                                        <asp:ListItem Text="Burundi" Value="Burundi" />
                                        <asp:ListItem Text="Cabo Verde" Value="Cabo Verde" />
                                        <asp:ListItem Text="Cambodia" Value="Cambodia" />
                                        <asp:ListItem Text="Cameroon" Value="Cameroon" />
                                        <asp:ListItem Text="Canada" Value="Canada" />
                                        <asp:ListItem Text="Central African Republic" Value="Central African Republic" />
                                        <asp:ListItem Text="Chad" Value="Chad" />
                                        <asp:ListItem Text="Chile" Value="Chile" />
                                        <asp:ListItem Text="China" Value="China" />
                                        <asp:ListItem Text="Colombia" Value="Colombia" />
                                        <asp:ListItem Text="Comoros" Value="Comoros" />
                                        <asp:ListItem Text="Congo, Democratic Republic of the" Value="Congo, Democratic Republic of the" />
                                        <asp:ListItem Text="Congo, Republic of the" Value="Congo, Republic of the" />
                                        <asp:ListItem Text="Costa Rica" Value="Costa Rica" />
                                        <asp:ListItem Text="Cote d'Ivoire" Value="Cote d'Ivoire" />
                                        <asp:ListItem Text="Croatia" Value="Croatia" />
                                        <asp:ListItem Text="Cuba" Value="Cuba" />
                                        <asp:ListItem Text="Cyprus" Value="Cyprus" />
                                        <asp:ListItem Text="Czech Republic" Value="Czech Republic" />
                                        <asp:ListItem Text="Denmark" Value="Denmark" />
                                        <asp:ListItem Text="Djibouti" Value="Djibouti" />
                                        <asp:ListItem Text="Dominica" Value="Dominica" />
                                        <asp:ListItem Text="Dominican Republic" Value="Dominican Republic" />
                                        <asp:ListItem Text="Ecuador" Value="Ecuador" />
                                        <asp:ListItem Text="Egypt" Value="Egypt" />
                                        <asp:ListItem Text="El Salvador" Value="El Salvador" />
                                        <asp:ListItem Text="Equatorial Guinea" Value="Equatorial Guinea" />
                                        <asp:ListItem Text="Eritrea" Value="Eritrea" />
                                        <asp:ListItem Text="Estonia" Value="Estonia" />
                                        <asp:ListItem Text="Eswatini" Value="Eswatini" />
                                        <asp:ListItem Text="Ethiopia" Value="Ethiopia" />
                                        <asp:ListItem Text="Fiji" Value="Fiji" />
                                        <asp:ListItem Text="Finland" Value="Finland" />
                                        <asp:ListItem Text="France" Value="France" />
                                        <asp:ListItem Text="Gabon" Value="Gabon" />
                                        <asp:ListItem Text="Gambia" Value="Gambia" />
                                        <asp:ListItem Text="Georgia" Value="Georgia" />
                                        <asp:ListItem Text="Germany" Value="Germany" />
                                        <asp:ListItem Text="Ghana" Value="Ghana" />
                                        <asp:ListItem Text="Greece" Value="Greece" />
                                        <asp:ListItem Text="Grenada" Value="Grenada" />
                                        <asp:ListItem Text="Guatemala" Value="Guatemala" />
                                        <asp:ListItem Text="Guinea" Value="Guinea" />
                                        <asp:ListItem Text="Guinea-Bissau" Value="Guinea-Bissau" />
                                        <asp:ListItem Text="Guyana" Value="Guyana" />
                                        <asp:ListItem Text="Haiti" Value="Haiti" />
                                        <asp:ListItem Text="Honduras" Value="Honduras" />
                                        <asp:ListItem Text="Hungary" Value="Hungary" />
                                        <asp:ListItem Text="Iceland" Value="Iceland" />
                                        <asp:ListItem Text="India" Value="India" />
                                        <asp:ListItem Text="Indonesia" Value="Indonesia" />
                                        <asp:ListItem Text="Iran" Value="Iran" />
                                        <asp:ListItem Text="Iraq" Value="Iraq" />
                                        <asp:ListItem Text="Ireland" Value="Ireland" />
                                        <asp:ListItem Text="Israel" Value="Israel" />
                                        <asp:ListItem Text="Italy" Value="Italy" />
                                        <asp:ListItem Text="Jamaica" Value="Jamaica" />
                                        <asp:ListItem Text="Japan" Value="Japan" />
                                        <asp:ListItem Text="Jordan" Value="Jordan" />
                                        <asp:ListItem Text="Kazakhstan" Value="Kazakhstan" />
                                        <asp:ListItem Text="Kenya" Value="Kenya" />
                                        <asp:ListItem Text="Kiribati" Value="Kiribati" />
                                        <asp:ListItem Text="Kosovo" Value="Kosovo" />
                                        <asp:ListItem Text="Kuwait" Value="Kuwait" />
                                        <asp:ListItem Text="Kyrgyzstan" Value="Kyrgyzstan" />
                                        <asp:ListItem Text="Laos" Value="Laos" />
                                        <asp:ListItem Text="Latvia" Value="Latvia" />
                                        <asp:ListItem Text="Lebanon" Value="Lebanon" />
                                        <asp:ListItem Text="Lesotho" Value="Lesotho" />
                                        <asp:ListItem Text="Liberia" Value="Liberia" />
                                        <asp:ListItem Text="Libya" Value="Libya" />
                                        <asp:ListItem Text="Liechtenstein" Value="Liechtenstein" />
                                        <asp:ListItem Text="Lithuania" Value="Lithuania" />
                                        <asp:ListItem Text="Luxembourg" Value="Luxembourg" />
                                        <asp:ListItem Text="Madagascar" Value="Madagascar" />
                                        <asp:ListItem Text="Malawi" Value="Malawi" />
                                        <asp:ListItem Text="Malaysia" Value="Malaysia" />
                                        <asp:ListItem Text="Maldives" Value="Maldives" />
                                        <asp:ListItem Text="Mali" Value="Mali" />
                                        <asp:ListItem Text="Malta" Value="Malta" />
                                        <asp:ListItem Text="Marshall Islands" Value="Marshall Islands" />
                                        <asp:ListItem Text="Mauritania" Value="Mauritania" />
                                        <asp:ListItem Text="Mauritius" Value="Mauritius" />
                                        <asp:ListItem Text="Mexico" Value="Mexico" />
                                        <asp:ListItem Text="Micronesia" Value="Micronesia" />
                                        <asp:ListItem Text="Moldova" Value="Moldova" />
                                        <asp:ListItem Text="Monaco" Value="Monaco" />
                                        <asp:ListItem Text="Mongolia" Value="Mongolia" />
                                        <asp:ListItem Text="Montenegro" Value="Montenegro" />
                                        <asp:ListItem Text="Morocco" Value="Morocco" />
                                        <asp:ListItem Text="Mozambique" Value="Mozambique" />
                                        <asp:ListItem Text="Myanmar (Burma)" Value="Myanmar (Burma)" />
                                        <asp:ListItem Text="Namibia" Value="Namibia" />
                                        <asp:ListItem Text="Nauru" Value="Nauru" />
                                        <asp:ListItem Text="Nepal" Value="Nepal" />
                                        <asp:ListItem Text="Netherlands" Value="Netherlands" />
                                        <asp:ListItem Text="New Zealand" Value="New Zealand" />
                                        <asp:ListItem Text="Nicaragua" Value="Nicaragua" />
                                        <asp:ListItem Text="Niger" Value="Niger" />
                                        <asp:ListItem Text="Nigeria" Value="Nigeria" />
                                        <asp:ListItem Text="North Korea" Value="North Korea" />
                                        <asp:ListItem Text="North Macedonia" Value="North Macedonia" />
                                        <asp:ListItem Text="Norway" Value="Norway" />
                                        <asp:ListItem Text="Oman" Value="Oman" />
                                        <asp:ListItem Text="Pakistan" Value="Pakistan" />
                                        <asp:ListItem Text="Palau" Value="Palau" />
                                        <asp:ListItem Text="Palestine" Value="Palestine" />
                                        <asp:ListItem Text="Panama" Value="Panama" />
                                        <asp:ListItem Text="Papua New Guinea" Value="Papua New Guinea" />
                                        <asp:ListItem Text="Paraguay" Value="Paraguay" />
                                        <asp:ListItem Text="Peru" Value="Peru" />
                                        <asp:ListItem Text="Philippines" Value="Philippines" />
                                        <asp:ListItem Text="Poland" Value="Poland" />
                                        <asp:ListItem Text="Portugal" Value="Portugal" />
                                        <asp:ListItem Text="Qatar" Value="Qatar" />
                                        <asp:ListItem Text="Romania" Value="Romania" />
                                        <asp:ListItem Text="Russia" Value="Russia" />
                                        <asp:ListItem Text="Rwanda" Value="Rwanda" />
                                        <asp:ListItem Text="Saint Kitts and Nevis" Value="Saint Kitts and Nevis" />
                                        <asp:ListItem Text="Saint Lucia" Value="Saint Lucia" />
                                        <asp:ListItem Text="Saint Vincent and the Grenadines" Value="Saint Vincent and the Grenadines" />
                                        <asp:ListItem Text="Samoa" Value="Samoa" />
                                        <asp:ListItem Text="San Marino" Value="San Marino" />
                                        <asp:ListItem Text="Sao Tome and Principe" Value="Sao Tome and Principe" />
                                        <asp:ListItem Text="Saudi Arabia" Value="Saudi Arabia" />
                                        <asp:ListItem Text="Senegal" Value="Senegal" />
                                        <asp:ListItem Text="Serbia" Value="Serbia" />
                                        <asp:ListItem Text="Seychelles" Value="Seychelles" />
                                        <asp:ListItem Text="Sierra Leone" Value="Sierra Leone" />
                                        <asp:ListItem Text="Singapore" Value="Singapore" />
                                        <asp:ListItem Text="Slovakia" Value="Slovakia" />
                                        <asp:ListItem Text="Slovenia" Value="Slovenia" />
                                        <asp:ListItem Text="Solomon Islands" Value="Solomon Islands" />
                                        <asp:ListItem Text="Somalia" Value="Somalia" />
                                        <asp:ListItem Text="South Africa" Value="South Africa" />
                                        <asp:ListItem Text="South Korea" Value="South Korea" />
                                        <asp:ListItem Text="South Sudan" Value="South Sudan" />
                                        <asp:ListItem Text="Spain" Value="Spain" />
                                        <asp:ListItem Text="Sri Lanka" Value="Sri Lanka" />
                                        <asp:ListItem Text="Sudan" Value="Sudan" />
                                        <asp:ListItem Text="Suriname" Value="Suriname" />
                                        <asp:ListItem Text="Sweden" Value="Sweden" />
                                        <asp:ListItem Text="Switzerland" Value="Switzerland" />
                                        <asp:ListItem Text="Syria" Value="Syria" />
                                        <asp:ListItem Text="Taiwan" Value="Taiwan" />
                                        <asp:ListItem Text="Tajikistan" Value="Tajikistan" />
                                        <asp:ListItem Text="Tanzania" Value="Tanzania" />
                                        <asp:ListItem Text="Thailand" Value="Thailand" />
                                        <asp:ListItem Text="Timor-Leste" Value="Timor-Leste" />
                                        <asp:ListItem Text="Togo" Value="Togo" />
                                        <asp:ListItem Text="Tonga" Value="Tonga" />
                                        <asp:ListItem Text="Trinidad and Tobago" Value="Trinidad and Tobago" />
                                        <asp:ListItem Text="Tunisia" Value="Tunisia" />
                                        <asp:ListItem Text="Turkey" Value="Turkey" />
                                        <asp:ListItem Text="Turkmenistan" Value="Turkmenistan" />
                                        <asp:ListItem Text="Tuvalu" Value="Tuvalu" />
                                        <asp:ListItem Text="Uganda" Value="Uganda" />
                                        <asp:ListItem Text="Ukraine" Value="Ukraine" />
                                        <asp:ListItem Text="United Arab Emirates" Value="United Arab Emirates" />
                                        <asp:ListItem Text="United Kingdom" Value="United Kingdom" />
                                        <asp:ListItem Text="United States of America (USA)" Value="United States of America (USA)" />
                                        <asp:ListItem Text="Uruguay" Value="Uruguay" />
                                        <asp:ListItem Text="Uzbekistan" Value="Uzbekistan" />
                                        <asp:ListItem Text="Vanuatu" Value="Vanuatu" />
                                        <asp:ListItem Text="Vatican City (Holy See)" Value="Vatican City (Holy See)" />
                                        <asp:ListItem Text="Venezuela" Value="Venezuela" />
                                        <asp:ListItem Text="Vietnam" Value="Vietnam" />
                                        <asp:ListItem Text="Yemen" Value="Yemen" />
                                        <asp:ListItem Text="Zambia" Value="Zambia" />
                                        <asp:ListItem Text="Zimbabwe" Value="Zimbabwe" />
                                    </asp:DropDownList>
                                </div>
                                
                            </div>

                            <div class="col-md-4">
                                <label>Oras</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="Oras" runat="server" placeholder="Oras" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Cod Postal</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="CodPostal" runat="server" placeholder="Cod Postal" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                         <div class="row">
                            <div class="col">
                                <label>Adresa Completa</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="AdresaCompleta" runat="server" placeholder="Scrie adresa completa de domiciliu" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                                
                            </div>
                        </div>

                     <div class="row">
                    <div class="col">
                        <center>
                            <span class="badge badge-pill badge-info">Credentiale de logare</span>
                        </center>
                        
                    </div>    
                </div>
                

                <div class="row">
                            <div class="col-md-6">
                                <label>Username</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="ID_Utilizator" runat="server" placeholder="Username"></asp:TextBox>
                                </div>
                                
                            </div>

                            <div class="col-md-6">
                                <label>Parola</label>
                                <div class="form-group">
                                    <asp:TextBox Class="form-control" ID="Parola" runat="server" placeholder="Parola" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                </div>

                        
                <div class="row">
                
                    <div class="col">
                       
                        <div class="form-group">
                             <asp:Button ID="Button4" runat="server" Text="Inregistrare" Class="btn btn-primary btn-block btn-lg" OnClick="Button4_Click" />
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
