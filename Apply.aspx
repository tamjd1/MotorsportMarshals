<%--
Title: Apply.aspx
Date Created: 24/01/2014
Author: Taha Amjad
Description: This page is for MMS Membership Application
--%>

<%@ Page Title="Apply" Language="C#" MasterPageFile="~/HorizontalNav.Master" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="WebApplication1.WebForm4" %>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    <script>
        function textboxIdentifier(value, id) {
            $("#" + id).val((value !== "") ? value
                : (id === "MainContent_txtFirstName") ? "first"
                : (id === "MainContent_txtMiddleName") ? "middle"
                : (id === "MainContent_txtLastName") ? "last"
                : (id === "MainContent_txtAddress2") ? "optional"
                : (id === "MainContent_txtHomePhone") ? "home"
                : (id === "MainContent_txtCellPhone") ? "cell"
                : (id === "MainContent_txtWorkPhone") ? "work"
                : (id === "MainContent_txtDateOfBirth") ? "DD/MM/YYYY"
                : (id === "MainContent_txtEmergencyFirstName") ? "first"
                : (id === "MainContent_txtEmergencyMiddleName") ? "middle"
                : (id === "MainContent_txtEmergencyLastName") ? "last"
                : (id === "MainContent_txtEmergencyStreetAddress2") ? "optional"
                : (id === "MainContent_txtEmergencyHomePhone") ? "home"
                : (id === "MainContent_txtEmergencyCellPhone") ? "cell"
                : (id === "MainContent_txtEmergencyWorkPhone") ? "work"
                : value);
        }
    </script>
    
    <div class="content float-center" style="width:80%; border:1px solid black">
        <br />
        <asp:Label runat="server" Font-Size="Larger" Font-Bold="true">2014 MEMBERSHIP APPLICATION</asp:Label>
        <br />
        <br />
        <div class="seperator"></div>
        <br />
        <asp:Label runat="server">Personal Information</asp:Label>
        <br />
        <br />
        <asp:Table ID="tblPersonalInfo" runat="server" CssClass="float-center" Width="80%">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Name:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtFirstName" onchange="textboxIdentifier(this.value,this.id)" runat="server">first</asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtMiddleName" onchange="textboxIdentifier(this.value,this.id)" runat="server">middle</asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLastName" onchange="textboxIdentifier(this.value,this.id)" runat="server">last</asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Street Address:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtAddress1" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server">City:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Street Address:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtAddress2" onchange="textboxIdentifier(this.value,this.id)" runat="server">optional</asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server">Province:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtProvince" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Postal Code:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtPostalCode" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server">Country:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Phone:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtHomePhone" onchange="textboxIdentifier(this.value,this.id)" runat="server">home</asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCellPhone" onchange="textboxIdentifier(this.value,this.id)" runat="server">cell</asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtWorkPhone" onchange="textboxIdentifier(this.value,this.id)" runat="server">work</asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Email:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server">Date Of Birth:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDateOfBirth" onchange="textboxIdentifier(this.value,this.id)" runat="server">DD/MM/YYYY</asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <div class="seperator"></div>
        <br />
        <asp:Label runat="server">Emergency Contact Information</asp:Label>
        <br />
        <br />
        <asp:Table ID="tblEmergencyContactInfo" runat="server" CssClass="float-center">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Name:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyFirstName" onchange="textboxIdentifier(this.value,this.id)" runat="server">first</asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyMiddleName" onchange="textboxIdentifier(this.value,this.id)" runat="server">middle</asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyLastName" onchange="textboxIdentifier(this.value,this.id)" runat="server">last</asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Street Address:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyStreetAddress" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server">City:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyCity" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Street Address:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyStreetAddress2" onchange="textboxIdentifier(this.value,this.id)" runat="server">optional</asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server">Province:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyProvince" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Postal Code:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyPostalCode" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server">Country:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyCountry" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Phone:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyHomePhone" onchange="textboxIdentifier(this.value,this.id)" runat="server">home</asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyCellPhone" onchange="textboxIdentifier(this.value,this.id)" runat="server">cell</asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyWorkPhone" onchange="textboxIdentifier(this.value,this.id)" runat="server">work</asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Relationship:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtRelationship" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <div class="seperator"></div>
        <br />
        <asp:Label runat="server">Personal Medical Information <em>(Optional)</em></asp:Label>
        <br />
        <br />
        <asp:Table ID="tblMedicalInfo" runat="server" CssClass="float-center">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Drug Allergies:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtDrugAllergies" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Other Allergies:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtOtherAllergies" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Current Medical Conditions:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtCurrentMedicalConditions" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Current Medications:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtCurrentMedications" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Physical Limitations:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtPhysicalLimitations" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />
        <div class="seperator"></div>
        <br />
        <asp:Label runat="server">Miscellaneous Information</asp:Label>
        <br />
        <br />
        <asp:Table ID="tblMiscellaneousInfo" runat="server" CssClass="float-center" Width="80%">

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Log Book Number:</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLogBookNumber" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:Label runat="server">Check one of the following for your ID card photo</asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell RowSpan="2">
                    <asp:Label runat="server">Are you a member of another accredited marshalling club?</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButton ID="radNo" runat="server" GroupName="YesNo" Text="No" />
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:RadioButton ID="radLastYearsPhoto" runat="server" GroupName="IdCardPhoto" Text="I am happy with last years photo, please use it" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                     <asp:RadioButton ID="radYes" runat="server" GroupName="YesNo" Text="Yes" />
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                     <asp:RadioButton ID="radNewPhotoTaken" runat="server" GroupName="IdCardPhoto" Text="I would like a new photo taken at my first event worked" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Primary Club: <br /> (for licensing purpose)</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList runat="server" ID="ddlClubs">
                        <asp:ListItem Text="MMS" Value="MMS"></asp:ListItem>
                        <asp:ListItem Text="MCO" Value="MCO"></asp:ListItem>
                        <asp:ListItem Text="CRCA" Value="CRCA"></asp:ListItem>
                    </asp:DropDownList>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:RadioButton ID="radIncludingPhoto" runat="server" GroupName="IdCardPhoto" Text="I am including a passport sized photo with my application" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server">Occupation</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtOccupation" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:RadioButton ID="radWillEmailPhoto" runat="server" GroupName="IdCardPhoto" Text="I will email a current photo of myself to mmswebmaster@bell.net" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="3">
                    <asp:Label runat="server">If you want a variation of your name on your ID card, please provide here</asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtNameForIdCard" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br />  
        <div class="seperator"></div>
        <br />    
        <asp:TextBox id="txtTermsAndConditions" TextMode="multiline" Columns="70" Rows="7" ReadOnly="true" runat="server" 
            Text="TERMS & CONDITIONS:
                    In applying for membership with Motorsport Marshalling Services, hereafter referred
                    to as “MMS”, I agree to the following terms and conditions of membership:
                    1. I am fully aware that I am volunteering my services for a potentially hazardous undertaking involving motor
                    racing events, and that when I am serving with MMS I may be subjecting myself at times to the possibility of
                    serious bodily injury and/or damage to, or loss of, personal property carried to the event.
                    2. I understand that I will receive absolutely no monetary compensation in any form for my services to, or with
                    MMS, in connection with any automotive speed event, or any other form of competition event.
                    3. I will not hold MMS as a group, or any of its members, individually or collectively, responsible for any other
                    bodily injuries I may receive, and/or damage to or loss of personal effects sustained as a result of my
                    participation in any competitive event. Continuing membership in MMS and participation in events is on a
                    purely voluntary basis, and the decision to do so is strictly my own.
                    4. I attest to the fact that I am fit in all aspects - physically, mentally, or otherwise - or that I have a qualified
                    doctor’s testimony that I can perform all duties required of an MMS member.
                    5. I agree to abide by all policies, rules and regulations governing the MMS organization, its operational procedures
                    and its activities, and that it is my personal responsibility to familiarize myself with the organizational,
                    administrative and operational policies and procedures, and that while participating in events I will accept
                    and comply with all directives and instructions from the MMS Board of Directors, designated MMS
                    Chief Course Marshals and Station Captains.
                    6. I agree to outfit myself with the MMS prescribed/approved dress code.
                    7. I agree to attend training sessions and periodic skills workshops to obtain and maintain a personal skills-set
                    appropriate to my level of participation in competitive motor racing events.
                    8. I agree to abide by the MMS rules & regulations, failure to comply will result in my membership being revoked .
                    9. I agree to conduct myself in a sportsmanlike manner at all times, and to endeavor to advance the character
                    of MMS in automobile racing specifically, and the sport in general.
                    10. An annual membership fee is due upon approval of this application. In the event my dues payment is not
                    honored by the bank, I agree to pay any bank charges in addition to my membership dues.
                    By my signature on pg. 2, I acknowledge
                    my acceptance of the terms and
                    conditions of membership in Motorsport
                    Marshalling Services, as stated above,
                    and affirm that as of this date, information
                    provided by me in this application is true
                    and complete to the best of my
                    knowledge." 

            />

        <br />
        <br />
        <asp:RadioButton ID="radReturning" runat="server" GroupName="MembershipFee" Text="I am a returning MMS member and will send a cheque or a
                interact email money transfer for the $10.00.
                This covers MMS membership and CASC licensing." />
        <br />
        <asp:RadioButton ID="radNew" runat="server" GroupName="MembershipFee" Text="I am a new MMS member applicant enclosing a cheque or
                sending a Interact email money transfer for $10.00.
                This fee covers MMS membership and CASC licensing" />
        <br />
        <asp:CheckBox ID="chkAgree" runat="server" Text="By submitting this application, I agree to the MMS Terms and Conditions" />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />

        <br />
        <br />
        <br />
    </div>
</asp:Content>
