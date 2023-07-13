using System;
using System.Data;
using System.Collections.Generic;


namespace kalkulačk
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        private List<string> history; 

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                history = new List<string>(); 
                ViewState["History"] = history; 
            }
            else
            {
                history = (List<string>)ViewState["History"]; 
            }
        }



        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            string expression = txtResult.Text;
            string result = CalculateExpression(expression);

            history.Add(expression + " = " + result); 

           ViewState["History"] = history; 
            UpdateHistory();
        }

        private string CalculateExpression(string expression)
        {
            try
            {
                
                DataTable dt = new DataTable();
                object result = dt.Compute(expression, "");

                return result.ToString();
            }
            catch (Exception ex)
            {
                
                return "chyba: " + ex.Message; 
            }
        }

        private void UpdateHistory()
        {
            historyList.DataSource = history; 
            historyList.DataBind(); 
        }
       
    }
}