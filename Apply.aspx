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
                    <asp:TextBox ID="txtFirstName" runat="server" CssClass="textBox" Text='<%# Bind("MemberFirst") %>'></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell> 
                    <asp:TextBox ID="txtMiddleName" runat="server" CssClass="textBox" Text='<%# Bind("MemberMiddle") %>'></asp:TextBox>
                </asp:TableCell>   
                <asp:TableCell>           
                    <asp:TextBox ID="txtLastName" runat="server" style="text-align:left; margin-left:8px;" Text='<%# Bind("MemberLast") %>'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Street Address (Primary):<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="txtAddress1" Columns="50" runat="server" style="text-align:left; margin-left:10px;" Text='<%# Bind("MemberFirstAddress") %>'></asp:TextBox>
                </asp:TableCell>               
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Street Address (Secondary):</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="txtAddress2" Columns="50" runat="server" style="text-align:left; margin-left:10px;" Text='<%# Bind("MemberSecondAddress") %>'></asp:TextBox>
                </asp:TableCell>               
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">City:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="textBox" Text='<%# Bind("MemberCity") %>'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Province:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtProvince" runat="server" CssClass="textBox" Text='<%# Bind("MemberProvince") %>'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Country:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtCountry" runat="server" CssClass="textBox" Text='<%# Bind("MemberCountry") %>'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Postal Code:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtPostalCode" runat="server" CssClass="textBox"  Text='<%# Bind("MemberPostal") %>'></asp:TextBox>
                </asp:TableCell>               
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Phone (Home/Cell/Work):<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>                    
                    <asp:TextBox ID="txtHomePhone" runat="server" CssClass="textBox" Text='<%# Bind("MemberHomePhone") %>'></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>                
                    <asp:TextBox ID="txtCellPhone" runat="server" CssClass="textBox" Text='<%# Bind("MemberCellPhone") %>'></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <div style="float:right"> 
                        <asp:TextBox ID="txtWorkPhone" runat="server" CssClass="textBox" Text='<%# Bind("MemberWorkPhone") %>'></asp:TextBox>
                    </div>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Email:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="textBox" Text='<%# Bind("MemberEmail") %>'></asp:TextBox>
                </asp:TableCell>           
            </asp:TableRow>

            <asp:TableRow>
                 <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Date Of Birth (DD/MM/YYYY):<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="textBox" Text='<%# Bind("MemberBirthDate") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtEmergencyFirstName"  runat="server" CssClass="textBox" Text='<%# Bind("EmergencyFirst") %>'></asp:TextBox>
               </asp:TableCell>
               <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyMiddleName" CssClass="textBox" runat="server" Text='<%# Bind("EmergencyMiddle") %>'></asp:TextBox>
               </asp:TableCell>
               <asp:TableCell>
                    <div style="float:right"> 
                        <asp:TextBox ID="txtEmergencyLastName" style="text-align:left; margin-left:8px;" runat="server" Text='<%# Bind("EmergencyLast") %>'></asp:TextBox>
                    </div>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>                   
                    <asp:Label runat="server" CssClass="label">Street Address (Primary):<span style="color:red">*</span></asp:Label>                     
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="txtEmergencyAddress1" Columns="50" runat="server" style="text-align:left; margin-left:10px;" Text='<%# Bind("EmergencyFirstAddress") %>'></asp:TextBox>
                </asp:TableCell>               
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Street Address (Secondary):</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="2">
                    <asp:TextBox ID="txtEmergencyAddress2" Columns="50" runat="server" style="text-align:left; margin-left:10px;" Text='<%# Bind("EmergencySecondAddress") %>'></asp:TextBox>
                </asp:TableCell>               
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">City:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyCity" runat="server" CssClass="textBox" Text='<%# Bind("EmergencyCity") %>'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Province:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyProvince" runat="server" CssClass="textBox" Text='<%# Bind("EmergencyProvince") %>'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Country:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyCountry" runat="server" CssClass="textBox" Text='<%# Bind("EmergencyCountry") %>'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Phone (Home/Cell/Work):<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>        
                    <asp:TextBox ID="txtEmergencyHomePhone" CssClass="textBox" runat="server" Text='<%# Bind("EmergencyHomePhone") %>'></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmergencyCellPhone" CssClass="textBox" runat="server" Text='<%# Bind("EmergencyCellPhone") %>'></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <div style="float:right">
                        <asp:TextBox ID="txtEmergencyWorkPhone" CssClass="textBox" runat="server" Text='<%# Bind("EmergencyWorkPhone") %>'></asp:TextBox>
                    </div>
                </asp:TableCell>
            </asp:TableRow>

            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Relationship:<span style="color:red">*</span></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtRelationship" CssClass="textBox" runat="server" Text='<%# Bind("EmergencyRelationship") %>'></asp:TextBox>
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
                    <asp:TextBox ID="txtDrugAllergies" TextMode="multiline" Columns="50" Rows="2" runat="server" Text='<%# Bind("DrugAllergies") %>'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Other Allergies:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtOtherAllergies" TextMode="multiline" Columns="50" Rows="2" runat="server" Text='<%# Bind("OtherAllergies") %>'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Current Medical Conditions:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtCurrentMedicalConditions" TextMode="multiline" Columns="50" Rows="2" runat="server" Text='<%# Bind("MedicalConditions") %>'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Current Medications:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtCurrentMedications" TextMode="multiline" Columns="50" Rows="2" runat="server" Text='<%# Bind("Medications") %>'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label runat="server" CssClass="label">Physical Limitations:</asp:Label>
                </asp:TableCell>
                <asp:TableCell ColumnSpan="3">
                    <asp:TextBox ID="txtPhysicalLimitations" TextMode="multiline" Columns="50" Rows="2" runat="server" Text='<%# Bind("PhysicalLimitations") %>'></asp:TextBox>
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
                            <asp:TextBox ID="txtLogBookNumber" runat="server" Text='<%# Bind("LogBookNumber") %>'></asp:TextBox>
                        </asp:TableCell> 
                        <asp:TableCell RowSpan="3">
                    
                            <div style="float: left; position: relative; left: 50%;">
                                <div style="text-align:left; float: left; position: relative;left: -50%;">
                                    <div style="margin-left:30px">
                                        <asp:Label runat="server" >Check one of the following for your ID card photo:<span style="color:red">*</span></asp:Label> <br /> <br />
                                        <asp:RadioButtonList ID="IdCardPhoto" runat="server" SelectedValue='<%# Bind("IdPhotoOption") %>'>
                                            <asp:ListItem Value="1" Text="I am happy with last years photo, please use it" />
                                            <asp:ListItem Value="2" Text="I would like a new photo taken at my first event worked" />
                                            <asp:ListItem Value="3" Text="I am including a passport sized photo with my application" />
                                            <asp:ListItem Value="4" Text="I will email a current photo of myself to mmswebmaster@bell.net" />
                                        </asp:RadioButtonList>
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
                            <asp:TextBox ID="txtOccupation" runat="server" Text='<%# Bind("Occupation") %>'></asp:TextBox>
                        </asp:TableCell>                      
                    </asp:TableRow>
                    
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" CssClass="label">If you want a variation of your name <br /> on your ID card, please provide here:</asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtNameForIdCard" runat="server" Text='<%# Bind("NameVariation") %>'></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell>
                            <br /><br />
                            <asp:Label runat="server" CssClass="label">Are you a member of another <br /> accredited marshalling club?<span style="color:red">*</span></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Left">
                            <br /><br />
                            <asp:RadioButtonList ID="IsOtherClubMember" runat="server" SelectedValue='<%# Bind("IsOtherClubMember") %>'>
                                <asp:ListItem Value="0" Text="Yes"/>
                                <asp:ListItem Value="1" Text="No" />                           
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                     <asp:TableCell>
                            <asp:Label runat="server" CssClass="label">Primary Club:<span style="color:red">*</span></asp:Label>
                        </asp:TableCell>         
                        <asp:TableCell> 
                                              
                            <asp:DropDownList runat="server" ID="ddlPrimaryClub" CssClass="dropdown">
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

                    By clicking the Submit button, I acknowledge my acceptance of the terms and conditions of membership in Motorsport Marshalling Services, as stated above, and affirm that as of this date, information provided by me in this application is true and complete to the best of my knowledge." 

            />

        <br />
        <br />
                </asp:TableCell></asp:TableRow><asp:TableRow>
                <asp:TableCell>
                    <div style="float: left; position: relative; left: 50%;">
                        <div style="text-align:left; float: left; position: relative;left: -50%;">
                            <asp:Label runat="server" >Please select a payment option:<span style="color:red">*</span></asp:Label> <br /> <br />
                            <asp:RadioButtonList ID="PaymentOption" runat="server" SelectedValue='<%# Bind("PaymentOption") %>'>
                            <asp:ListItem Value="Email" Text="I am a returning MMS member and will send a cheque or a
                                    interact email money transfer for the $10.00.
                                    This covers MMS membership and CASC licensing." />
                            <asp:ListItem Value="Other" Text="I am a new MMS member applicant enclosing a cheque or
                                    sending a Interact email money transfer for $10.00.
                                    This fee covers MMS membership and CASC licensing" />
                            </asp:RadioButtonList>
                            <br />
                            <br />
                            <asp:Label runat="server" >Terms Agreement:<span style="color:red">*</span></asp:Label> <br /> <br />
                            <asp:CheckBox ID="chkAgree" runat="server" Text="By submitting this application, I agree to the MMS Terms and Conditions" />
                            <br />
                            <br />
                            <div style="text-align:center">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                </asp:TableCell></asp:TableRow></asp:Table></div><asp:SqlDataSource 
        ID="mmsDBConnection" 
        runat="server" 
        ConnectionString="<%$ ConnectionStrings:MMSConnectionString %>" 
        SelectCommand="SELECT * FROM [tblMembers]" 
        ConflictDetection="CompareAllValues" 
        DeleteCommand="DELETE FROM [tblMembers] 
            WHERE (([MemberFirst] = @original_MemberFirst) 
        OR ([MemberFirst] IS NULL AND @original_MemberFirst IS NULL)) 
        AND (([MemberMiddle] = @original_MemberMiddle) 
        OR ([MemberMiddle] IS NULL AND @original_MemberMiddle IS NULL)) 
        AND (([MemberLast] = @original_MemberLast) 
        OR ([MemberLast] IS NULL AND @original_MemberLast IS NULL)) 
        AND (([MemberFirstAddress] = @original_MemberFirstAddress) 
        OR ([MemberFirstAddress] IS NULL AND @original_MemberFirstAddress IS NULL)) 
        AND (([MemberSecondAddress] = @original_MemberSecondAddress) 
        OR ([MemberSecondAddress] IS NULL AND @original_MemberSecondAddress IS NULL)) 
        AND (([MemberCity] = @original_MemberCity) 
        OR ([MemberCity] IS NULL AND @original_MemberCity IS NULL)) 
        AND (([MemberProvince] = @original_MemberProvince) 
        OR ([MemberProvince] IS NULL AND @original_MemberProvince IS NULL)) 
        AND (([MemberCountry] = @original_MemberCountry) 
        OR ([MemberCountry] IS NULL AND @original_MemberCountry IS NULL)) 
        AND (([MemberPostal] = @original_MemberPostal) 
        OR ([MemberPostal] IS NULL AND @original_MemberPostal IS NULL)) 
        AND (([MemberHomePhone] = @original_MemberHomePhone)
        OR ([MemberHomePhone] IS NULL AND @original_MemberHomePhone IS NULL)) 
        AND (([MemberCellPhone] = @original_MemberCellPhone) 
        OR ([MemberCellPhone] IS NULL AND @original_MemberCellPhone IS NULL)) 
        AND (([MemberWorkPhone] = @original_MemberWorkPhone) 
        OR ([MemberWorkPhone] IS NULL AND @original_MemberWorkPhone IS NULL)) 
        AND (([MemberEmail] = @original_MemberEmail) 
        OR ([MemberEmail] IS NULL AND @original_MemberEmail IS NULL)) 
        AND (([MemberBirthDate] = @original_MemberBirthDate) 
        OR ([MemberBirthDate] IS NULL AND @original_MemberBirthDate IS NULL)) 
        AND (([EmergencyFirst] = @original_EmergencyFirst) 
        OR ([EmergencyFirst] IS NULL AND @original_EmergencyFirst IS NULL)) 
        AND (([EmergencyMiddle] = @original_EmergencyMiddle) 
        OR ([EmergencyMiddle] IS NULL AND @original_EmergencyMiddle IS NULL)) 
        AND (([EmergencyLast] = @original_EmergencyLast) 
        OR ([EmergencyLast] IS NULL AND @original_EmergencyLast IS NULL)) 
        AND (([EmergencyFirstAddress] = @original_EmergencyFirstAddress) 
        OR ([EmergencyFirstAddress] IS NULL AND @original_EmergencyFirstAddress IS NULL)) 
        AND (([EmergencySecondAddress] = @original_EmergencySecondAddress) 
        OR ([EmergencySecondAddress] IS NULL AND @original_EmergencySecondAddress IS NULL)) 
        AND (([EmergencyCity] = @original_EmergencyCity) 
        OR ([EmergencyCity] IS NULL AND @original_EmergencyCity IS NULL)) 
        AND (([EmergencyProvince] = @original_EmergencyProvince) 
        OR ([EmergencyProvince] IS NULL AND @original_EmergencyProvince IS NULL)) 
        AND (([EmergencyCountry] = @original_EmergencyCountry) 
        OR ([EmergencyCountry] IS NULL AND @original_EmergencyCountry IS NULL)) 
        AND (([EmergencyHomePhone] = @original_EmergencyHomePhone) 
        OR ([EmergencyHomePhone] IS NULL AND @original_EmergencyHomePhone IS NULL)) 
        AND (([EmergencyCellPhone] = @original_EmergencyCellPhone) 
        OR ([EmergencyCellPhone] IS NULL AND @original_EmergencyCellPhone IS NULL)) 
        AND (([EmergencyWorkPhone] = @original_EmergencyWorkPhone) 
        OR ([EmergencyWorkPhone] IS NULL AND @original_EmergencyWorkPhone IS NULL)) 
        AND (([EmergencyRelation] = @original_EmergencyRelation) 
        OR ([EmergencyRelation] IS NULL AND @original_EmergencyRelation IS NULL)) 
        AND (([DrugAllergies] = @original_DrugAllergies) 
        OR ([DrugAllergies] IS NULL AND @original_DrugAllergies IS NULL)) 
        AND (([OtherAllergies] = @original_OtherAllergies) 
        OR ([OtherAllergies] IS NULL AND @original_OtherAllergies IS NULL)) 
        AND (([MedicalConditions] = @original_MedicalConditions) 
        OR ([MedicalConditions] IS NULL AND @original_MedicalConditions IS NULL)) 
        AND (([Medications] = @original_Medications) 
        OR ([Medications] IS NULL AND @original_Medications IS NULL)) 
        AND (([PhysicalLimitations] = @original_PhysicalLimitations) 
        OR ([PhysicalLimitations] IS NULL AND @original_PhysicalLimitations IS NULL)) 
        AND (([LogBookNumber] = @original_LogBookNumber) 
        OR ([LogBookNumber] IS NULL AND @original_LogBookNumber IS NULL)) 
        AND (([Occupation] = @original_Occupation) 
        OR ([Occupation] IS NULL AND @original_Occupation IS NULL)) 
        AND (([NameVariation] = @original_NameVariation) 
        OR ([NameVariation] IS NULL AND @original_NameVariation IS NULL)) 
        AND (([IsOtherClubMember] = @original_IsOtherClubMember) 
        OR ([IsOtherClubMember] IS NULL AND @original_IsOtherClubMember IS NULL)) 
        AND (([PrimaryClub] = @original_PrimaryClub) 
        OR ([PrimaryClub] IS NULL AND @original_PrimaryClub IS NULL)) 
        AND (([IdPhotoOption] = @original_IdPhotoOption) 
        OR ([IdPhotoOption] IS NULL AND @original_IdPhotoOption IS NULL)) 
        AND (([PaymentOption] = @original_PaymentOption) 
        OR ([PaymentOption] IS NULL AND @original_PaymentOption IS NULL))" 
        InsertCommand="INSERT INTO [tblMembers] 
        ([MemberFirst], 
        [MemberMiddle], 
        [MemberLast], 
        [MemberFirstAddress], 
        [MemberSecondAddress], 
        [MemberCity], 
        [MemberProvince], 
        [MemberCountry], 
        [MemberPostal], 
        [MemberHomePhone], 
        [MemberCellPhone], 
        [MemberWorkPhone], 
        [MemberEmail], 
        [MemberBirthDate],  
        [EmergencyFirst], 
        [EmergencyMiddle], 
        [EmergencyLast], 
        [EmergencyFirstAddress], 
        [EmergencySecondAddress], 
        [EmergencyCity], 
        [EmergencyProvince], 
        [EmergencyCountry], 
        [EmergencyHomePhone], 
        [EmergencyCellPhone], 
        [EmergencyWorkPhone], 
        [EmergencyRelation], 
        [DrugAllergies], 
        [OtherAllergies], 
        [MedicalConditions], 
        [Medications], 
        [PhysicalLimitations], 
        [LogBookNumber], 
        [Occupation], 
        [NameVariation], 
        [IsOtherClubMember], 
        [PrimaryClub], 
        [IdPhotoOption], 
        [PaymentOption]) 
        VALUES 
        (@MemberFirst, 
        @MemberMiddle, 
        @MemberLast, 
        @MemberFirstAddress, 
        @MemberSecondAddress, 
        @MemberCity, 
        @MemberProvince, 
        @MemberCountry, 
        @MemberPostal, 
        @MemberHomePhone, 
        @MemberCellPhone, 
        @MemberWorkPhone, 
        @MemberEmail, 
        @MemberBirthDate, 
        @EmergencyFirst, 
        @EmergencyMiddle, 
        @EmergencyLast, 
        @EmergencyFirstAddress, 
        @EmergencySecondAddress, 
        @EmergencyCity, 
        @EmergencyProvince, 
        @EmergencyCountry, 
        @EmergencyHomePhone, 
        @EmergencyCellPhone, 
        @EmergencyWorkPhone, 
        @EmergencyRelation, 
        @DrugAllergies, 
        @OtherAllergies, 
        @MedicalConditions, 
        @Medications, 
        @PhysicalLimitations,
        @LogBookNumber, 
        @Occupation, 
        @NameVariation, 
        @IsOtherClubMember, 
        @PrimaryClub, 
        @IdPhotoOption, 
        @PaymentOption)" 
        OldValuesParameterFormatString="original_{0}" 
        UpdateCommand="UPDATE [tblMembers] 
        SET [MemberFirst] = @MemberFirst, 
        [MemberMiddle] = @MemberMiddle, 
        [MemberLast] = @MemberLast, 
        [MemberFirstAddress] = @MemberFirstAddress, 
        [MemberSecondAddress] = @MemberSecondAddress, 
        [MemberCity] = @MemberCity, 
        [MemberProvince] = @MemberProvince, 
        [MemberCountry] = @MemberCountry, 
        [MemberPostal] = @MemberPostal, 
        [MemberHomePhone] = @MemberHomePhone, 
        [MemberCellPhone] = @MemberCellPhone, 
        [MemberWorkPhone] = @MemberWorkPhone, 
        [MemberEmail] = @MemberEmail, 
        [MemberBirthDate] = @MemberBirthDate, 
        [EmergencyFirst] = @EmergencyFirst, 
        [EmergencyMiddle] = @EmergencyMiddle, 
        [EmergencyLast] = @EmergencyLast, 
        [EmergencyFirstAddress] = @EmergencyFirstAddress, 
        [EmergencySecondAddress] = @EmergencySecondAddress, 
        [EmergencyCity] = @EmergencyCity, 
        [EmergencyProvince] = @EmergencyProvince, 
        [EmergencyCountry] = @EmergencyCountry, 
        [EmergencyHomePhone] = @EmergencyHomePhone, 
        [EmergencyCellPhone] = @EmergencyCellPhone, 
        [EmergencyWorkPhone] = @EmergencyWorkPhone, 
        [EmergencyRelation] = @EmergencyRelation, 
        [DrugAllergies] = @DrugAllergies, 
        [OtherAllergies] = @OtherAllergies, 
        [MedicalConditions] = @MedicalConditions, 
        [Medications] = @Medications, 
        [PhysicalLimitations] = @PhysicalLimitations, 
        [LogBookNumber] = @LogBookNumber, 
        [Occupation] = @Occupation, 
        [NameVariation] = @NameVariation, 
        [IsOtherClubMember] = @IsOtherClubMember, 
        [PrimaryClub] = @PrimaryClub, 
        [IdPhotoOption] = @IdPhotoOption, 
        [PaymentOption] = @PaymentOption 
        WHERE (([MemberFirst] = @original_MemberFirst) 
        OR ([MemberFirst] IS NULL AND @original_MemberFirst IS NULL)) 
        AND (([MemberMiddle] = @original_MemberMiddle) 
        OR ([MemberMiddle] IS NULL AND @original_MemberMiddle IS NULL)) 
        AND (([MemberLast] = @original_MemberLast) 
        OR ([MemberLast] IS NULL AND @original_MemberLast IS NULL)) 
        AND (([MemberFirstAddress] = @original_MemberFirstAddress) 
        OR ([MemberFirstAddress] IS NULL AND @original_MemberFirstAddress IS NULL)) 
        AND (([MemberSecondAddress] = @original_MemberSecondAddress) 
        OR ([MemberSecondAddress] IS NULL AND @original_MemberSecondAddress IS NULL)) 
        AND (([MemberCity] = @original_MemberCity) 
        OR ([MemberCity] IS NULL AND @original_MemberCity IS NULL)) 
        AND (([MemberProvince] = @original_MemberProvince) 
        OR ([MemberProvince] IS NULL AND @original_MemberProvince IS NULL)) 
        AND (([MemberCountry] = @original_MemberCountry) 
        OR ([MemberCountry] IS NULL AND @original_MemberCountry IS NULL)) 
        AND (([MemberPostal] = @original_MemberPostal)
        OR ([MemberPostal] IS NULL AND @original_MemberPostal IS NULL)) 
        AND (([MemberHomePhone] = @original_MemberHomePhone) 
        OR ([MemberHomePhone] IS NULL AND @original_MemberHomePhone IS NULL)) 
        AND (([MemberCellPhone] = @original_MemberCellPhone) 
        OR ([MemberCellPhone] IS NULL AND @original_MemberCellPhone IS NULL)) 
        AND (([MemberWorkPhone] = @original_MemberWorkPhone) 
        OR ([MemberWorkPhone] IS NULL AND @original_MemberWorkPhone IS NULL)) 
        AND (([MemberEmail] = @original_MemberEmail) 
        OR ([MemberEmail] IS NULL AND @original_MemberEmail IS NULL)) 
        AND (([MemberBirthDate] = @original_MemberBirthDate) 
        OR ([MemberBirthDate] IS NULL AND @original_MemberBirthDate IS NULL)) 
        AND (([EmergencyFirst] = @original_EmergencyFirst) 
        OR ([EmergencyFirst] IS NULL AND @original_EmergencyFirst IS NULL)) 
        AND (([EmergencyMiddle] = @original_EmergencyMiddle) 
        OR ([EmergencyMiddle] IS NULL AND @original_EmergencyMiddle IS NULL)) 
        AND (([EmergencyLast] = @original_EmergencyLast) 
        OR ([EmergencyLast] IS NULL AND @original_EmergencyLast IS NULL)) 
        AND (([EmergencyFirstAddress] = @original_EmergencyFirstAddress) 
        OR ([EmergencyFirstAddress] IS NULL AND @original_EmergencyFirstAddress IS NULL)) 
        AND (([EmergencySecondAddress] = @original_EmergencySecondAddress) 
        OR ([EmergencySecondAddress] IS NULL AND @original_EmergencySecondAddress IS NULL)) 
        AND (([EmergencyCity] = @original_EmergencyCity) 
        OR ([EmergencyCity] IS NULL AND @original_EmergencyCity IS NULL)) 
        AND (([EmergencyProvince] = @original_EmergencyProvince) 
        OR ([EmergencyProvince] IS NULL AND @original_EmergencyProvince IS NULL)) 
        AND (([EmergencyCountry] = @original_EmergencyCountry) 
        OR ([EmergencyCountry] IS NULL AND @original_EmergencyCountry IS NULL)) 
        AND (([EmergencyHomePhone] = @original_EmergencyHomePhone) 
        OR ([EmergencyHomePhone] IS NULL AND @original_EmergencyHomePhone IS NULL)) 
        AND (([EmergencyCellPhone] = @original_EmergencyCellPhone) 
        OR ([EmergencyCellPhone] IS NULL AND @original_EmergencyCellPhone IS NULL)) 
        AND (([EmergencyWorkPhone] = @original_EmergencyWorkPhone) 
        OR ([EmergencyWorkPhone] IS NULL AND @original_EmergencyWorkPhone IS NULL)) 
        AND (([EmergencyRelation] = @original_EmergencyRelation) 
        OR ([EmergencyRelation] IS NULL AND @original_EmergencyRelation IS NULL)) 
        AND (([DrugAllergies] = @original_DrugAllergies)
        OR ([DrugAllergies] IS NULL AND @original_DrugAllergies IS NULL)) 
        AND (([OtherAllergies] = @original_OtherAllergies) 
        OR ([OtherAllergies] IS NULL AND @original_OtherAllergies IS NULL)) 
        AND (([MedicalConditions] = @original_MedicalConditions) 
        OR ([MedicalConditions] IS NULL AND @original_MedicalConditions IS NULL)) 
        AND (([Medications] = @original_Medications) 
        OR ([Medications] IS NULL AND @original_Medications IS NULL)) 
        AND (([PhysicalLimitations] = @original_PhysicalLimitations) 
        OR ([PhysicalLimitations] IS NULL AND @original_PhysicalLimitations IS NULL)) 
        AND (([LogBookNumber] = @original_LogBookNumber) 
        OR ([LogBookNumber] IS NULL AND @original_LogBookNumber IS NULL)) 
        AND (([Occupation] = @original_Occupation) 
        OR ([Occupation] IS NULL AND @original_Occupation IS NULL)) 
        AND (([NameVariation] = @original_NameVariation) 
        OR ([NameVariation] IS NULL AND @original_NameVariation IS NULL))
        AND (([IsOtherClubMember] = @original_IsOtherClubMember) 
        OR ([IsOtherClubMember] IS NULL AND @original_IsOtherClubMember IS NULL)) 
        AND (([PrimaryClub] = @original_PrimaryClub) 
        OR ([PrimaryClub] IS NULL AND @original_PrimaryClub IS NULL)) 
        AND (([IdPhotoOption] = @original_IdPhotoOption) 
        OR ([IdPhotoOption] IS NULL AND @original_IdPhotoOption IS NULL)) 
        AND (([PaymentOption] = @original_PaymentOption) 
        OR ([PaymentOption] IS NULL AND @original_PaymentOption IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MemberFirst" Type="String" />
            <asp:Parameter Name="original_MemberMiddle" Type="String" />
            <asp:Parameter Name="original_MemberLast" Type="String" />
            <asp:Parameter Name="original_MemberFirstAddress" Type="String" />
            <asp:Parameter Name="original_MemberSecondAddress" Type="String" />
            <asp:Parameter Name="original_MemberCity" Type="String" />
            <asp:Parameter Name="original_MemberProvince" Type="String" />
            <asp:Parameter Name="original_MemberCountry" Type="String" />
            <asp:Parameter Name="original_MemberPostal" Type="String" />
            <asp:Parameter Name="original_MemberHomePhone" Type="String" />
            <asp:Parameter Name="original_MemberCellPhone" Type="String" />
            <asp:Parameter Name="original_MemberWorkPhone" Type="String" />
            <asp:Parameter Name="original_MemberEmail" Type="String" />
            <asp:Parameter DbType="Date" Name="original_MemberBirthDate" />
            <asp:Parameter Name="original_EmergencyFirst" Type="String" />
            <asp:Parameter Name="original_EmergencyMiddle" Type="String" />
            <asp:Parameter Name="original_EmergencyLast" Type="String" />
            <asp:Parameter Name="original_EmergencyFirstAddress" Type="String" />
            <asp:Parameter Name="original_EmergencySecondAddress" Type="String" />
            <asp:Parameter Name="original_EmergencyCity" Type="String" />
            <asp:Parameter Name="original_EmergencyProvince" Type="String" />
            <asp:Parameter Name="original_EmergencyCountry" Type="String" />
            <asp:Parameter Name="original_EmergencyHomePhone" Type="String" />
            <asp:Parameter Name="original_EmergencyCellPhone" Type="String" />
            <asp:Parameter Name="original_EmergencyWorkPhone" Type="String" />
            <asp:Parameter Name="original_EmergencyRelation" Type="String" />
            <asp:Parameter Name="original_DrugAllergies" Type="String" />
            <asp:Parameter Name="original_OtherAllergies" Type="String" />
            <asp:Parameter Name="original_MedicalConditions" Type="String" />
            <asp:Parameter Name="original_Medications" Type="String" />
            <asp:Parameter Name="original_PhysicalLimitations" Type="String" />
            <asp:Parameter Name="original_LogBookNumber" Type="String" />
            <asp:Parameter Name="original_Occupation" Type="String" />
            <asp:Parameter Name="original_NameVariation" Type="String" />
            <asp:Parameter Name="original_IsOtherClubMember" Type="Boolean" />
            <asp:Parameter Name="original_PrimaryClub" Type="String" />
            <asp:Parameter Name="original_IdPhotoOption" Type="String" />
            <asp:Parameter Name="original_PaymentOption" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MemberFirst" Type="String" />
            <asp:Parameter Name="MemberMiddle" Type="String" />
            <asp:Parameter Name="MemberLast" Type="String" />
            <asp:Parameter Name="MemberFirstAddress" Type="String" />
            <asp:Parameter Name="MemberSecondAddress" Type="String" />
            <asp:Parameter Name="MemberCity" Type="String" />
            <asp:Parameter Name="MemberProvince" Type="String" />
            <asp:Parameter Name="MemberCountry" Type="String" />
            <asp:Parameter Name="MemberPostal" Type="String" />
            <asp:Parameter Name="MemberHomePhone" Type="String" />
            <asp:Parameter Name="MemberCellPhone" Type="String" />
            <asp:Parameter Name="MemberWorkPhone" Type="String" />
            <asp:Parameter Name="MemberEmail" Type="String" />
            <asp:Parameter DbType="Date" Name="MemberBirthDate" />
            <asp:Parameter Name="EmergencyFirst" Type="String" />
            <asp:Parameter Name="EmergencyMiddle" Type="String" />
            <asp:Parameter Name="EmergencyLast" Type="String" />
            <asp:Parameter Name="EmergencyFirstAddress" Type="String" />
            <asp:Parameter Name="EmergencySecondAddress" Type="String" />
            <asp:Parameter Name="EmergencyCity" Type="String" />
            <asp:Parameter Name="EmergencyProvince" Type="String" />
            <asp:Parameter Name="EmergencyCountry" Type="String" />
            <asp:Parameter Name="EmergencyHomePhone" Type="String" />
            <asp:Parameter Name="EmergencyCellPhone" Type="String" />
            <asp:Parameter Name="EmergencyWorkPhone" Type="String" />
            <asp:Parameter Name="EmergencyRelation" Type="String" />
            <asp:Parameter Name="DrugAllergies" Type="String" />
            <asp:Parameter Name="OtherAllergies" Type="String" />
            <asp:Parameter Name="MedicalConditions" Type="String" />
            <asp:Parameter Name="Medications" Type="String" />
            <asp:Parameter Name="PhysicalLimitations" Type="String" />
            <asp:Parameter Name="LogBookNumber" Type="String" />
            <asp:Parameter Name="Occupation" Type="String" />
            <asp:Parameter Name="NameVariation" Type="String" />
            <asp:Parameter Name="IsOtherClubMember" Type="Boolean" />
            <asp:Parameter Name="PrimaryClub" Type="String" />
            <asp:Parameter Name="IdPhotoOption" Type="String" />
            <asp:Parameter Name="PaymentOption" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MemberFirst" Type="String" />
            <asp:Parameter Name="MemberMiddle" Type="String" />
            <asp:Parameter Name="MemberLast" Type="String" />
            <asp:Parameter Name="MemberFirstAddress" Type="String" />
            <asp:Parameter Name="MemberSecondAddress" Type="String" />
            <asp:Parameter Name="MemberCity" Type="String" />
            <asp:Parameter Name="MemberProvince" Type="String" />
            <asp:Parameter Name="MemberCountry" Type="String" />
            <asp:Parameter Name="MemberPostal" Type="String" />
            <asp:Parameter Name="MemberHomePhone" Type="String" />
            <asp:Parameter Name="MemberCellPhone" Type="String" />
            <asp:Parameter Name="MemberWorkPhone" Type="String" />
            <asp:Parameter Name="MemberEmail" Type="String" />
            <asp:Parameter DbType="Date" Name="MemberBirthDate" />
            <asp:Parameter Name="EmergencyFirst" Type="String" />
            <asp:Parameter Name="EmergencyMiddle" Type="String" />
            <asp:Parameter Name="EmergencyLast" Type="String" />
            <asp:Parameter Name="EmergencyFirstAddress" Type="String" />
            <asp:Parameter Name="EmergencySecondAddress" Type="String" />
            <asp:Parameter Name="EmergencyCity" Type="String" />
            <asp:Parameter Name="EmergencyProvince" Type="String" />
            <asp:Parameter Name="EmergencyCountry" Type="String" />
            <asp:Parameter Name="EmergencyHomePhone" Type="String" />
            <asp:Parameter Name="EmergencyCellPhone" Type="String" />
            <asp:Parameter Name="EmergencyWorkPhone" Type="String" />
            <asp:Parameter Name="EmergencyRelation" Type="String" />
            <asp:Parameter Name="DrugAllergies" Type="String" />
            <asp:Parameter Name="OtherAllergies" Type="String" />
            <asp:Parameter Name="MedicalConditions" Type="String" />
            <asp:Parameter Name="Medications" Type="String" />
            <asp:Parameter Name="PhysicalLimitations" Type="String" />
            <asp:Parameter Name="LogBookNumber" Type="String" />
            <asp:Parameter Name="Occupation" Type="String" />
            <asp:Parameter Name="NameVariation" Type="String" />
            <asp:Parameter Name="IsOtherClubMember" Type="Boolean" />
            <asp:Parameter Name="PrimaryClub" Type="String" />
            <asp:Parameter Name="IdPhotoOption" Type="String" />
            <asp:Parameter Name="PaymentOption" Type="String" />
            <asp:Parameter Name="original_MemberFirst" Type="String" />
            <asp:Parameter Name="original_MemberMiddle" Type="String" />
            <asp:Parameter Name="original_MemberLast" Type="String" />
            <asp:Parameter Name="original_MemberFirstAddress" Type="String" />
            <asp:Parameter Name="original_MemberSecondAddress" Type="String" />
            <asp:Parameter Name="original_MemberCity" Type="String" />
            <asp:Parameter Name="original_MemberProvince" Type="String" />
            <asp:Parameter Name="original_MemberCountry" Type="String" />
            <asp:Parameter Name="original_MemberPostal" Type="String" />
            <asp:Parameter Name="original_MemberHomePhone" Type="String" />
            <asp:Parameter Name="original_MemberCellPhone" Type="String" />
            <asp:Parameter Name="original_MemberWorkPhone" Type="String" />
            <asp:Parameter Name="original_MemberEmail" Type="String" />
            <asp:Parameter DbType="Date" Name="original_MemberBirthDate" />
            <asp:Parameter Name="original_EmergencyFirst" Type="String" />
            <asp:Parameter Name="original_EmergencyMiddle" Type="String" />
            <asp:Parameter Name="original_EmergencyLast" Type="String" />
            <asp:Parameter Name="original_EmergencyFirstAddress" Type="String" />
            <asp:Parameter Name="original_EmergencySecondAddress" Type="String" />
            <asp:Parameter Name="original_EmergencyCity" Type="String" />
            <asp:Parameter Name="original_EmergencyProvince" Type="String" />
            <asp:Parameter Name="original_EmergencyCountry" Type="String" />
            <asp:Parameter Name="original_EmergencyHomePhone" Type="String" />
            <asp:Parameter Name="original_EmergencyCellPhone" Type="String" />
            <asp:Parameter Name="original_EmergencyWorkPhone" Type="String" />
            <asp:Parameter Name="original_EmergencyRelation" Type="String"/>
            <asp:Parameter Name="original_DrugAllergies" Type="String" />
            <asp:Parameter Name="original_OtherAllergies" Type="String" />
            <asp:Parameter Name="original_MedicalConditions" Type="String" />
            <asp:Parameter Name="original_Medications" Type="String" />
            <asp:Parameter Name="original_PhysicalLimitations" Type="String" />
            <asp:Parameter Name="original_LogBookNumber" Type="String" />
            <asp:Parameter Name="original_Occupation" Type="String" />
            <asp:Parameter Name="original_NameVariation" Type="String" />
            <asp:Parameter Name="original_IsOtherClubMember" Type="Boolean" />
            <asp:Parameter Name="original_PrimaryClub" Type="String" />
            <asp:Parameter Name="original_IdPhotoOption" Type="String" />
            <asp:Parameter Name="original_PaymentOption" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
