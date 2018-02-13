using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TobeDemo.Demo
{
    public partial class CGPA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            if (IsPostBack && ViewState["CurrentTable"] != null) dt = (DataTable)ViewState["CurrentTable"];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TableRow row = new TableRow();
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    TableCell cell = new TableCell();
                    cell.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(cell);
                }
                ValueTable.Rows.Add(row);
            }
            if (ValueTable.Rows.Count > 1) ValueDiv.Visible = true;
            else ValueDiv.Visible = false;
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            try
            {
                int check;
                if (GradeList.SelectedIndex != 0 && CodeBox.Text.Length >= 2 && TitleBox.Text.Length >= 3 && int.TryParse(UnitBox.Text.Trim(), out check))
                {
                    TableCell sn = new TableCell();
                    if (ValueTable.Rows.Count == 1) sn.Text = "1.";
                    else
                    {
                        string initial = ValueTable.Rows[ValueTable.Rows.Count - 1].Cells[0].Text;
                        string hold = initial.Remove(initial.Length - 1);
                        int snInt = int.Parse(hold) + 1;
                        sn.Text = snInt.ToString() + ".";
                    }
                    TableCell code = new TableCell();
                    code.Text = CodeBox.Text.ToUpper().Trim();
                    TableCell title = new TableCell();
                    title.Text = TitleBox.Text.Trim();
                    TableCell unit = new TableCell();
                    unit.Text = UnitBox.Text.Trim();
                    TableCell grade = new TableCell();
                    grade.Text = GradeList.SelectedValue;
                    int pointInt;
                    if (GradeList.SelectedIndex == 1) pointInt = 5;
                    else if (GradeList.SelectedIndex == 2) pointInt = 4;
                    else if (GradeList.SelectedIndex == 3) pointInt = 3;
                    else if (GradeList.SelectedIndex == 4) pointInt = 2;
                    else if (GradeList.SelectedIndex == 5) pointInt = 1;
                    else pointInt = 0;
                    TableCell point = new TableCell();
                    point.Text = pointInt.ToString();
                    int gpInt;
                    gpInt = pointInt * int.Parse(UnitBox.Text.Trim());
                    TableCell gp = new TableCell();
                    gp.Text = gpInt.ToString(); ;
                    TableRow row = new TableRow();
                    row.Cells.Add(sn);
                    row.Cells.Add(code);
                    row.Cells.Add(title);
                    row.Cells.Add(unit);
                    row.Cells.Add(grade);
                    row.Cells.Add(point);
                    row.Cells.Add(gp);
                    ValueTable.Rows.Add(row);
                    DataTable dt = DataTbl(ValueTable);
                    ViewState["CurrentTable"] = dt;
                    ValueDiv.Visible = true;
                }
                else
                {
                    if (CodeBox.Text.Length < 2) InfoLabel.Text = "Please enter a valid course code";
                    else if (TitleBox.Text.Length < 3) InfoLabel.Text = "Please enter a valid course title";
                    else if (!int.TryParse(UnitBox.Text.Trim(), out check)) InfoLabel.Text = "Please enter a valid course unit";
                    else InfoLabel.Text = "Please select a grade";
                }
            }
            catch (Exception ex)
            {
                InfoLabel.Text = "Error: " + ex.Message;
            }
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            if (ClearBox.Text == "")
            {
                ValueTable.Rows.RemoveAt(ValueTable.Rows.Count - 1);
                DataTable dt = (DataTable)ViewState["CurrentTable"];
                dt.Rows.RemoveAt(dt.Rows.Count - 1);
                ViewState["CurrentTable"] = dt;
            }
            else
            {
                int location;
                if (int.TryParse(ClearBox.Text, out location) && location < ValueTable.Rows.Count)
                {
                    ValueTable.Rows.RemoveAt(location);
                    for (int i = 1; i < ValueTable.Rows.Count; i++)
                    {
                        ValueTable.Rows[i].Cells[0].Text = i.ToString() + ".";
                    }
                    DataTable dt = DataTbl(ValueTable);
                    ViewState["CurrentTable"] = dt;
                }
                else InfoLabel2.Text = "Wrong position/index provided";
            }
            if (ValueTable.Rows.Count > 1) ValueDiv.Visible = true;
            else ValueDiv.Visible = false;
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            int cu = 0;
            int cgp = 0;
            for (int i = 1; i < ValueTable.Rows.Count; i++)
            {
                cu += int.Parse(ValueTable.Rows[i].Cells[3].Text);
                cgp += int.Parse(ValueTable.Rows[i].Cells[6].Text);
            }
            CuLabel.Text = "Cummulative Unit (C.U.): " + cgp;
            CgpLabel.Text = "Cummulative Grade Point (C.G.P): " + cu;
            CgpaLabel.Text = "Cummulative Grade Point Average (C.G.P.A.): " + string.Format("{0:N2}", (double)cgp / cu);
            CgpaDiv.Visible = true;
        }

        public DataTable DataTbl(Table a)
        {
            DataTable dt = new DataTable("Hold");
            for (int adder = 0; adder < ValueTable.Rows[0].Cells.Count; adder++)
            {
                dt.Columns.Add(new DataColumn(adder.ToString()));
            }
            for (int i = 1; i < ValueTable.Rows.Count; i++)
            {
                DataRow dr = dt.NewRow();
                for (int j = 0; j < ValueTable.Rows[0].Cells.Count; j++)
                {
                    dr[j] = ValueTable.Rows[i].Cells[j].Text;
                }
                dt.Rows.Add(dr);
            }
            return dt;
        }

        //Not used, asp:Table is not serializeable
        public Table AspTable(DataTable dt)
        {
            Table tbl = new Table();
            tbl.Rows.Add(ValueTable.Rows[0]);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                TableRow row = new TableRow();
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    TableCell cell = new TableCell();
                    cell.Text = dt.Rows[i][j].ToString();
                    row.Cells.Add(cell);
                }
                tbl.Rows.Add(row);
            }
            return tbl;
        }

    }
}