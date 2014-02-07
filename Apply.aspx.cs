using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection aConnection = new SqlConnection(mmsDBConnection.ConnectionString))
            {
                aConnection.Open();
                SqlCommand aCommand = aConnection.CreateCommand();
                SqlTransaction aTransaction;

                // Start a local transaction.
                aTransaction = aConnection.BeginTransaction("SampleTransaction");

                // Must assign both transaction object and connection 
                // to Command object for a pending local transaction
                aCommand.Connection = aConnection;
                aCommand.Transaction = aTransaction;

                try
                {
                    //aCommand.CommandText = "INSERT INTO tblMembers(MemberID, EmergencyID) VALUES ('0000000001', '0000000000');";
                    aCommand.CommandText = "INSERT INTO tblMembers(MemberID, MemberFirst, MemberMiddle, MemberLast, MemberFirstAddress, MemberSecondAddress, MemberCity, MemberProvince, MemberCountry, MemberPostal, MemberHomePhone, MemberCellPhone, MemberWorkPhone, MemberEmail, MemberBirthDate, "
                                            + "EmergencyID, EmergencyFirst, EmergencyLast, EmergencyFirstAddress, EmergencySecondAddress, EmergencyCity, EmergencyProvince, EmergencyCountry, EmergencyHomePhone, EmergencyCellPhone, EmergencyWorkPhone, EmergencyRelation, "
                                            + "DrugAllergies, OtherAllergies, MedicalConditions, Medications, PhysicalLimitations, LogBookNumber, Occupation, NameVariation, IsOtherClubMember, PrimaryClub, IdPhotoOption, PaymentOption) VALUES ('"
                                            + "'9999999999', '" //random id, should be something better
                                            + txtFirstName.Text + "', '"
                                            + txtMiddleName.Text + "', '"
                                            + txtLastName.Text + "', '"
                                            + txtAddress1.Text + "', '"
                                            + txtAddress2.Text + "', '"
                                            + txtCity.Text + "', '"
                                            + txtProvince.Text + "', '"
                                            + txtCountry.Text + "', '"
                                            + txtPostalCode.Text + "', '"
                                            + txtHomePhone.Text + "', '"
                                            + txtCellPhone.Text + "', '"
                                            + txtWorkPhone.Text + "', '"
                                            + txtEmail.Text + "', '"
                                            + txtDateOfBirth.Text + "', '"
                                            + "9999999999" + "', '"
                                            + txtEmergencyFirstName.Text + "', '"
                                            + txtEmergencyMiddleName.Text + "', '"
                                            + txtEmergencyLastName.Text + "', '"
                                            + txtEmergencyAddress1.Text + "', '"
                                            + txtEmergencyAddress2.Text + "', '"
                                            + txtEmergencyCity.Text + "', '"
                                            + txtEmergencyProvince.Text + "', '"
                                            + txtEmergencyCountry.Text + "', '"
                                            + txtEmergencyHomePhone.Text + "', '"
                                            + txtEmergencyCellPhone.Text + "', '"
                                            + txtEmergencyWorkPhone.Text + "', '"
                                            + txtRelationship.Text + "', '"
                                            + txtDrugAllergies.Text + "', '"
                                            + txtOtherAllergies.Text + "', '"
                                            + txtCurrentMedicalConditions.Text + "', '"
                                            + txtCurrentMedications.Text + "', '"
                                            + txtPhysicalLimitations.Text + "', '"
                                            + txtLogBookNumber.Text + "', '"
                                            + txtOccupation.Text + "', '"
                                            + txtNameForIdCard.Text + "', '"
                                            + IsOtherClubMember.SelectedValue + "', '"
                                            + ddlPrimaryClub.SelectedValue + "', '"
                                            + IdCardPhoto.SelectedValue + "', '"
                                            + PaymentOption.SelectedValue
                                            + "');";
                    aCommand.ExecuteNonQuery(); //Execute a command that does not return anything

                    aTransaction.Commit();

                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine(ex.Message);
                    //lblError.Text = "Commit Exception Type: " + ex.GetType();
                    //lblError.Text += "  Message: " + ex.Message;

                    // Attempt to roll back the transaction. 
                    try
                    {
                        aTransaction.Rollback();
                    }
                    catch (Exception ex2)
                    {
                        System.Diagnostics.Debug.WriteLine(ex2.Message);
                        // This catch block will handle any errors that may have occurred 
                        // on the server that would cause the rollback to fail, such as 
                        // a closed connection.
                        //lblError.Text = "Rollback Exception Type: " + ex2.GetType();
                        //lblError.Text += "  Message: " + ex2.Message;
                    }
                }
            }
        }
    }
}