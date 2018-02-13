using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
using System.Configuration; //for ConfigurationManager

namespace TobeDemo
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                string dataSource = ConfigurationManager.ConnectionStrings["TobeDemoConnectionString"].ConnectionString;
                using (OracleConnection conn = new OracleConnection(dataSource))
                {
                    conn.Open();
                    //check all the information for availability at server
                    string userQuery = string.Format("SELECT username FROM tobedemo.users WHERE username='{0}'", UsernameBox.Text);
                    string emailQuery = string.Format("SELECT username FROM tobedemo.users WHERE email='{0}'", EmailBox.Text);
                    OracleCommand userCmd = new OracleCommand(userQuery, conn);
                    userCmd.CommandType = CommandType.Text;
                    OracleDataReader userDr = userCmd.ExecuteReader();   //read username row
                    OracleCommand emailCmd = new OracleCommand(emailQuery, conn);
                    emailCmd.CommandType = CommandType.Text;
                    OracleDataReader emailDr = emailCmd.ExecuteReader();  //read email row
                    InfoLabel.Visible = true;
                    if (!userDr.HasRows && !emailDr.HasRows)
                    {
                        string role = "";
                        if (StudentButton.Checked == true) role = "STD";
                        else if (TeachingStaffButton.Checked == true) role = "T_STF";
                        else if (NonTeachingStaffButton.Checked == true) role = "NT_STF";
                        else throw new Exception("Role error has occured");
                        string password = TobeDemoClass.Encrypt(PasswordBox.Text);
                        if (StudentButton.Checked==true)
                        {
                            string studentColumn="username,password,first_name,surname, other_name,matric_no,faculty,"; //7 entries
                            studentColumn += "dept,dob,gender,mar_status,phone_no,email,country_ori,state_ori,state_res,lga_res,"; //10 entries
                            studentColumn += "pri_school,pri_cert,sec_school,sec_cert,other_inst,other_cert,blood_grp,blood_type,med_hist,other_info";  //10 entries; 27 entries in total
                            string studentValue = string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}',", UsernameBox.Text.ToUpper(), password, FirstNameBox.Text, SurnameBox.Text, OtherNameBox.Text, MatricBox.Text, FacList.SelectedValue, DeptBox.Text); //8 entries  
                            studentValue += string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}',", DobBox.Text, GenderList.SelectedValue, MaritalList.SelectedValue, PhoneBox.Text, EmailBox.Text.ToUpper(), CountryBox.Text, StateBox.Text);  //7 entries
                            studentValue += string.Format("'{0}','{1}','{2}','{3}','{4}',", LocationBox.Text, LocationLgaBox.Text, PriBox.Text, PriList.SelectedValue, SecBox.Text);  //5 entries
                            studentValue += string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}'", SecList.SelectedValue, OtherBox1.Text, OtherBox2.Text, GroupList.SelectedValue, TypeList.SelectedValue, MedBox.Text, InfoBox.Text); //7 entries; 27 entries in total
                            string studentQuery = string.Format("INSERT INTO tobedemo.students({0}) VALUES({1})", studentColumn, studentValue);
                            OracleCommand studCmd = new OracleCommand(studentQuery, conn);
                            //studCmd.CommandType = CommandType.Text;
                            studCmd.ExecuteNonQuery();
                        }
                        else if (TeachingStaffButton.Checked == true)
                        {
                            string staffColumn = "role_id, username,password,first_name,surname, other_name,staff_id,designation,faculty,";  //9 entries
                            staffColumn += "dept,dob,gender,mar_status,phone_no,email,country_ori,state_ori,state_res,lga_res,";  //10 entries
                            staffColumn += "pri_school,pri_cert,sec_school,sec_cert,university,uni_cert,other_inst,other_cert,blood_grp,blood_type,med_hist, other_info";  //12 entries; 31 entries in total
                            string staffValue = string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}',", role, UsernameBox.Text.ToUpper(), password, FirstNameBox.Text, SurnameBox.Text, OtherNameBox.Text, StaffIdBox.Text, StaffDesgBox.Text);  //8 entries //)
                            staffValue += string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}',", FacList.SelectedValue, DeptBox.Text, DobBox.Text, GenderList.SelectedValue, MaritalList.SelectedValue, PhoneBox.Text, EmailBox.Text.ToUpper());  //7 entries
                            staffValue += string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}',", CountryBox.Text, StateBox.Text, LocationBox.Text, LocationLgaBox.Text, PriBox.Text, PriList.SelectedValue, SecBox.Text);  //7 entries
                            staffValue += string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}'", SecList.SelectedValue, UniBox.Text, UniList.SelectedValue, OtherBox1.Text, OtherBox2.Text, GroupList.SelectedValue, TypeList.SelectedValue, MedBox.Text, InfoBox.Text);  //9 entries; 31 entries in total
                            string staffQuery = string.Format("INSERT INTO tobedemo.staffs({0}) VALUES({1})", staffColumn, staffValue);
                            OracleCommand stfCmd = new OracleCommand(staffQuery, conn);
                            stfCmd.ExecuteNonQuery();
                        }
                        else
                        {
                            string staffColumn = "role_id, username,password,first_name,surname, other_name,staff_id,designation,";  //8 entries
                            staffColumn += "dob,gender,mar_status,phone_no,email,country_ori,state_ori,state_res,lga_res,";  //9 entries
                            staffColumn += "pri_school,pri_cert,sec_school,sec_cert,university,uni_cert,other_inst,other_cert,blood_grp,blood_type,med_hist, other_info";  //12 entries; 29 entries in total
                            string staffValue = string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}',", role, UsernameBox.Text.ToUpper(), password, FirstNameBox.Text, SurnameBox.Text, OtherNameBox.Text, StaffIdBox.Text, StaffDesgBox.Text);  //8 entries //)
                            staffValue += string.Format("'{0}','{1}','{2}','{3}','{4}',", DobBox.Text, GenderList.SelectedValue, MaritalList.SelectedValue, PhoneBox.Text, EmailBox.Text.ToUpper());  //5 entries
                            staffValue += string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}',", CountryBox.Text, StateBox.Text, LocationBox.Text, LocationLgaBox.Text, PriBox.Text, PriList.SelectedValue, SecBox.Text);  //7 entries
                            staffValue += string.Format("'{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}'", SecList.SelectedValue, UniBox.Text, UniList.SelectedValue, OtherBox1.Text, OtherBox2.Text, GroupList.SelectedValue, TypeList.SelectedValue, MedBox.Text, InfoBox.Text);  //9 entries; 29 entries in total
                            string staffQuery = string.Format("INSERT INTO tobedemo.nt_staffs({0}) VALUES({1})", staffColumn, staffValue);
                            OracleCommand stfCmd = new OracleCommand(staffQuery, conn);
                            stfCmd.ExecuteNonQuery();
                        }
                        string userValues = string.Format("'{0}','{1}','{2}','{3}'", role, UsernameBox.Text.ToUpper(), password, EmailBox.Text.ToUpper());
                        string usersQuery = "INSERT INTO tobedemo.users(role_id, username, password, email) VALUES(" + userValues + ")";
                        OracleCommand cmd = new OracleCommand(usersQuery, conn);
                        cmd.CommandType = CommandType.Text;
                        cmd.ExecuteNonQuery();
                        MainDiv.Visible = false;
                        InfoDiv.Visible = false;
                        InfoLabel.CssClass = "success";
                        InfoLabel.Text = "Registration Successful";
                    }
                    else
                    {
                        InfoLabel.CssClass = "errorBig";
                        if (userDr.HasRows && emailDr.HasRows) { InfoLabel.Text = "Username and email exists!"; }
                        else if (userDr.HasRows) { InfoLabel.Text = "Username exists!"; }
                        else if (emailDr.HasRows) { InfoLabel.Text = "Email exists"; }
                        else { InfoLabel.Text = "Impossible"; }
                    }
                }
            }
            catch (Exception ex)
            {
                InfoLabel.Visible = true;
                InfoLabel.CssClass = "errorBig";
                InfoLabel.Text = "Error: " + ex.Message;
            }
        }

        protected void StudentButton_CheckedChanged(object sender, EventArgs e)
        {
            InfoDiv.Visible = true;
            StaffDiv.Visible = false;
            UniTable.Visible = false;
            StaffInfo.Visible = false;
            StudentInfo.Visible = true;
            FacDept.Visible = true;
        }

        protected void StaffButton_CheckedChanged(object sender, EventArgs e)
        {
            InfoDiv.Visible = false;
            StaffDiv.Visible = true;
            TeachingStaffButton.Checked = false;
            NonTeachingStaffButton.Checked = false;
            UniTable.Visible = true;
        }

        protected void TeachingStaffButton_CheckedChanged(object sender, EventArgs e)
        {
            InfoDiv.Visible = true;
            StaffInfo.Visible = true;
            StudentInfo.Visible = false;
            FacDept.Visible = true;
        }

        protected void NonTeachingStaffButton_CheckedChanged(object sender, EventArgs e)
        {
            InfoDiv.Visible = true;
            StaffInfo.Visible = true;
            StudentInfo.Visible = false;
            FacDept.Visible = false;
        }

        protected void OtherInfoCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            if (OtherInfoCheckBox.Checked == true) OtherInfo.Visible = true;
            else OtherInfo.Visible = false;
        }
    }
}