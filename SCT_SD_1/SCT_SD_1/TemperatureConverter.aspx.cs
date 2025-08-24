using System;

namespace TempConverter
{
    public partial class TemperatureConverter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            try
            {
                double temp = double.Parse(txtTemperature.Text);
                string unit = ddlUnit.SelectedValue;

                double c, f, k;

                if (unit == "Celsius")
                {
                    c = temp;
                    f = (c * 9 / 5) + 32;
                    k = c + 273.15;
                }
                else if (unit == "Fahrenheit")
                {
                    f = temp;
                    c = (f - 32) * 5 / 9;
                    k = c + 273.15;
                }
                else // Kelvin
                {
                    k = temp;
                    c = k - 273.15;
                    f = (c * 9 / 5) + 32;
                }

                lblResult.Text =
                    "<b>✅ Converted Values:</b><br/>" +
                    $"<span>🌍 <b>Celsius:</b> {c:F2} °C</span><br/>" +
                    $"<span>🔥 <b>Fahrenheit:</b> {f:F2} °F</span><br/>" +
                    $"<span>❄️ <b>Kelvin:</b> {k:F2} K</span>";
            }
            catch
            {
                lblResult.Text = "<span style='color:#d32f2f;'><b>⚠️ Please enter a valid number.</b></span>";
            }
        }
    }
}
