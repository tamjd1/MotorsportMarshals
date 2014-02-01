<%--
Title: Apply.aspx
Date Created: 24/01/2014
Author: Taha Amjad and Cory Hall
Description: This page is for MMS Membership Application
--%>

<%@ Page Title="Apply" Language="C#" MasterPageFile="~/HorizontalNav.Master" AutoEventWireup="true" CodeBehind="Apply.aspx.cs" Inherits="WebApplication1.WebForm4" %>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
    
    
    <div class="content float-center" style="width:80%; border:1px solid black;">
        <br />
        <asp:Label runat="server" Font-Size="Larger" Font-Bold="true">2014 MEMBERSHIP APPLICATION</asp:Label>
        <br />
        <br />
        <div class="seperator"></div>
        <br />
        <asp:Label runat="server" Font-Italic="true" Font-Underline="true">Personal Information</asp:Label>
        <br />
        <br />
        <asp:Table ID="tblPersonalInfo" runat="server" CssClass="float-center">

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Name (First/Middle/Last):<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>                                
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell> 
                    <asp:TextBox ID="txtMiddleName" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>   
                <asp:TableCell>           
                    <asp:TextBox ID="txtLastName" runat="server" style="text-align:left; margin-left:8px;"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Street Address (Primary):<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="txtAddress1" Columns="50" runat="server" style="text-align:left; margin-left:10px;"></asp:TextBox>
                </asp:TableCell>               
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Street Address (Secondary):</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="txtAddress2" Columns="50" runat="server" style="text-align:left; margin-left:10px;"></asp:TextBox>
                </asp:TableCell>               
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">City:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Province:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtProvince" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Country:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCountry" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Postal Code:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtPostalCode" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>               
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Phone (Home/Cell/Work):<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>                    
                    <asp:TextBox ID="txtHomePhone" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>                
                    <asp:TextBox ID="txtCellPhone" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <div style="float:right"> 
                        <asp:TextBox ID="txtWorkPhone" runat="server" CssClass="textBox"></asp:TextBox>
                    </div>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Email:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>           
            </asp:TableRow>

            <asp:TableRow>
                 <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Date Of Birth (DD/MM/YYYY):<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>                
            </asp:TableRow>

        </asp:Table>
        <br />
        <div class="seperator"></div>
        <br />
        <asp:Label runat="server" Font-Italic="true" Font-Underline="true">Emergency Contact Information</asp:Label>
        <br />
        <br />
        <asp:Table ID="tblEmergencyContactInfo" runat="server" CssClass="float-center">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Name (First/Middle/Last):<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>                  
                    <asp:TextBox ID="txtEmergencyFirstName"  runat="server" CssClass="textBox"></asp:TextBox>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyMiddleName" CssClass="textBox" runat="server"></asp:TextBox>
               </asp:TableCell>
               <asp:TableCell>
                    <div style="float:right"> 
                        <asp:TextBox ID="txtEmergencyLastName" style="text-align:left; margin-left:8px;" runat="server"></asp:TextBox>
                    </div>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>                   
                    <asp:Label runat="server" CssClass="label">Street Address (Primary):<span style="color:red">*</span></asp:Label>                     
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="txtEmergencyAddress1" Columns="50" runat="server" style="text-align:left; margin-left:10px;"></asp:TextBox>
                </asp:TableCell>               
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Street Address (Secondary):</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="txtEmergencyAddress2" Columns="50" runat="server" style="text-align:left; margin-left:10px;"></asp:TextBox>
                </asp:TableCell>               
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">City:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyCity" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Province:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyProvince" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Country:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyCountry" runat="server" CssClass="textBox"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Phone (Home/Cell/Work):<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>        
                    <asp:TextBox ID="txtEmergencyHomePhone" CssClass="textBox" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyCellPhone" CssClass="textBox" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <div style="float:right">
                        <asp:TextBox ID="txtEmergencyWorkPhone" CssClass="textBox" runat="server"></asp:TextBox>
                    </div>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Relationship:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtRelationship" CssClass="textBox" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <br />
        <div class="seperator"></div>
        <br />
        <asp:Label runat="server" Font-Italic="true" Font-Underline="true">Personal Medical Information <em>(Optional)</em></asp:Label>
        <br />
        <br />
        <asp:Table ID="tblMedicalInfo" runat="server" CssClass="float-center">

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Drug Allergies:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtDrugAllergies" TextMode="multiline" Columns="50" Rows="2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Other Allergies:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtOtherAllergies" TextMode="multiline" Columns="50" Rows="2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Current Medical Conditions:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtCurrentMedicalConditions" TextMode="multiline" Columns="50" Rows="2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Current Medications:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtCurrentMedications" TextMode="multiline" Columns="50" Rows="2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Physical Limitations:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtPhysicalLimitations" TextMode="multiline" Columns="50" Rows="2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        <br />
        <div class="seperator"></div>
        <br />
        <asp:Label runat="server" Font-Italic="true" Font-Underline="true">Miscellaneous Information</asp:Label>
        <br />
        <br />
        
        <asp:Table ID="tblMiscellaneousInfo" runat="server" CssClass="float-center">   
                    
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" CssClass="label">Log Book Number:<span style="color:red">*</span></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtLogBookNumber" runat="server"></asp:TextBox>
                        </asp:TableCell> 
                        <asp:TableCell RowSpan="3">
                    
                            <div style="float: left; position: relative; left: 50%;">
                                <div style="text-align:left; float: left; position: relative;left: -50%;">
                                    <div style="margin-left:30px">
                                        <asp:Label runat="server" >Check one of the following for your ID card photo:<span style="color:red">*</span></asp:Label> <br /> <br />
                                        <asp:RadioButton ID="rdoCardOption1" runat="server" GroupName="IdCardPhoto" Text="I am happy with last years photo, please use it" /> <br />
                                        <asp:RadioButton ID="rdoCardOption2" runat="server" GroupName="IdCardPhoto" Text="I would like a new photo taken at my first event worked" /> <br />
                                        <asp:RadioButton ID="rdoCardOption3" runat="server" GroupName="IdCardPhoto" Text="I am including a passport sized photo with my application" /> <br />
                                        <asp:RadioButton ID="rdoCardOption4" runat="server" GroupName="IdCardPhoto" Text="I will email a current photo of myself to mmswebmaster@bell.net" /> <br />
                                    </div>
                                </div>
                            </div>
                        </asp:TableCell>                                              
                    </asp:TableRow>
                                      
                    <asp:TableRow>     
                        <asp:TableCell>
                            <asp:Label runat="server" CssClass="label">Occupation:<span style="color:red">*</span></asp:Label>
                        </asp:TableCell>        
                        <asp:TableCell>
                            <asp:TextBox ID="txtOccupation" runat="server"></asp:TextBox>
                        </asp:TableCell>                      
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" CssClass="label">If you want a variation of your name <br /> on your ID card, please provide here:</asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtNameForIdCard" runat="server"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <br /><br />
                            <asp:Label runat="server" CssClass="label">Are you a member of another <br /> accredited marshalling club?<span style="color:red">*</span></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Left">
                            <br /><br />                         
                            <asp:RadioButton ID="rdoYes" runat="server" GroupName="YesNo" Text="Yes" style="margin-left:15px"/>
                            <asp:RadioButton ID="rdoNo" runat="server" GroupName="YesNo" Text="No" />                           
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                     <asp:TableCell>
                            <asp:Label runat="server" CssClass="label">Primary Club:<span style="color:red">*</span></asp:Label>
                        </asp:TableCell>         
                        <asp:TableCell> 
                                              
                            <asp:DropDownList runat="server" ID="ddlPrimaryClub" CssClass="dropdown" >
                                <asp:ListItem Text="MMS" Value="MMS"></asp:ListItem>
                                <asp:ListItem Text="MCO" Value="MCO"></asp:ListItem>
                                <asp:ListItem Text="CRCA" Value="CRCA"></asp:ListItem>
                            </asp:DropDownList>   
                                            
                        </asp:TableCell> 
                    </asp:TableRow>
            <asp:TableRow>
                
            </asp:TableRow>           
        </asp:Table>
                
        <br />  
        <div class="seperator"></div>
        <br />
        <asp:Label runat="server" Font-Italic="true" Font-Underline="true">Terms and Conditions</asp:Label>
        <br />
        <br />   

        <asp:Table ID="tblTermsAgreeement" runat="server" CssClass="float-center">

            <asp:TableRow>
                <asp:TableCell>
        <asp:TextBox id="txtTermsAndConditions" TextMode="multiline" TextAlign="Left" Columns="70" Rows="7" ReadOnly="true" runat="server" 
            Text="TERMS & CONDITIONS:
In applying for membership with Motorsport Marshalling Services, hereafter referred to as “MMS”, I agree to the following terms and conditions of membership:
1. I am fully aware that I am volunteering my services for a potentially hazardous undertaking involving motor racing events, and that when I am serving with MMS I may be subjecting myself at times to the possibility of serious bodily injury and/or damage to, or loss of, personal property carried to the event.
2. I understand that I will receive absolutely no monetary compensation in any form for my services to, or with MMS, in connection with any automotive speed event, or any other form of competition event.
3. I will not hold MMS as a group, or any of its members, individually or collectively, responsible for any other bodily injuries I may receive, and/or damage to or loss of personal effects sustained as a result of my participation in any competitive event. Continuing membership in MMS and participation in events is on a purely voluntary basis, and the decision to do so is strictly my own.
4. I attest to the fact that I am fit in all aspects - physically, mentally, or otherwise - or that I have a qualified doctor’s testimony that I can perform all duties required of an MMS member.
5. I agree to abide by all policies, rules and regulations governing the MMS organization, its operational procedures and its activities, and that it is my personal responsibility to familiarize myself with the organizational, administrative and operational policies and procedures, and that while participating in events I will accept and comply with all directives and instructions from the MMS Board of Directors, designated MMS Chief Course Marshals and Station Captains.
6. I agree to outfit myself with the MMS prescribed/approved dress code.
7. I agree to attend training sessions and periodic skills workshops to obtain and maintain a personal skills-set appropriate to my level of participation in competitive motor racing events.
8. I agree to abide by the MMS rules & regulations, failure to comply will result in my membership being revoked .
9. I agree to conduct myself in a sportsmanlike manner at all times, and to endeavor to advance the character of MMS in automobile racing specifically, and the sport in general.
10. An annual membership fee is due upon approval of this application. In the event my dues payment is not honored by the bank, I agree to pay any bank charges in addition to my membership dues.

By my signature on pg. 2, I acknowledge my acceptance of the terms and conditions of membership in Motorsport Marshalling Services, as stated above, and affirm that as of this date, information provided by me in this application is true and complete to the best of my knowledge." 

            />

        <br />
        <br />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <div style="float: left; position: relative; left: 50%;">
                        <div style="text-align:left; float: left; position: relative;left: -50%;">
                            <asp:Label runat="server" >Please select a payment option:<span style="color:red">*</span></asp:Label> <br /> <br />
                            <asp:RadioButton ID="rdoReturning" runat="server" GroupName="MembershipFee" Text="I am a returning MMS member and will send a cheque or a
                                    interact email money transfer for the $10.00.
                                    This covers MMS membership and CASC licensing." />
                            <br />
                            <asp:RadioButton ID="rdoNew" runat="server" GroupName="MembershipFee" Text="I am a new MMS member applicant enclosing a cheque or
                                    sending a Interact email money transfer for $10.00.
                                    This fee covers MMS membership and CASC licensing" />
                            <br />
                            <br />
                            <asp:Label runat="server" >Terms Agreement:<span style="color:red">*</span></asp:Label> <br /> <br />
                            <asp:CheckBox ID="chkAgree" runat="server" Text="By submitting this application, I agree to the MMS Terms and Conditions" />
                            <br />
                            <br />
                            <div style="text-align:center">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
</asp:Content>
