using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

using System.Globalization;
using System.Resources;

namespace RestPOS.Sales_Register
{
    /// <summary>
    /// Interaction logic for ReceiptPrint.xaml
    /// </summary>
    public partial class ReceiptPrint : Window
    {
        ResourceManager res_man;
        CultureInfo cul; 
        public ReceiptPrint(string ReceiptNo)
        {
            InitializeComponent();
            lblInvoNo.Text = ReceiptNo;

        }

       
        public void topheader()
        {
            string sql3 = "select * from tbl_terminallocation where shopid = '" + UserInfo.Shopid + "'"; //'MTQC02' "; // 
            DataAccess.ExecuteSQL(sql3);
            DataTable dt1 = DataAccess.GetDataTable(sql3);

            DateTime dt = DateTime.Now;          
            lblCompanyName.Text = dt1.Rows[0].ItemArray[1].ToString();
            lblBranch.Text       = dt1.Rows[0].ItemArray[2].ToString();
            lblAddress.Text     = dt1.Rows[0].ItemArray[3].ToString();
            lblContact.Text     = dt1.Rows[0].ItemArray[4].ToString();
          //  lblEmail.Text       = dt1.Rows[0].ItemArray[5].ToString();
            lblWebsite.Text      = dt1.Rows[0].ItemArray[6].ToString();
            parameter.footermsg = dt1.Rows[0].ItemArray[11].ToString();

            string path = AppDomain.CurrentDomain.BaseDirectory + "\\STORELOGO\\" + dt1.Rows[0].ItemArray[12].ToString();
            if (!File.Exists(path))
            {
                piclogo.Source = null;
            }
            else
            {
                piclogo.Source = BitmapFromUri(new Uri(path));
            }
        }

        public static ImageSource BitmapFromUri(Uri source)
        {
            var bitmap = new BitmapImage();
            bitmap.BeginInit();
            bitmap.UriSource = source;
            bitmap.CacheOption = BitmapCacheOption.OnLoad;
            bitmap.EndInit();
            return bitmap;
        }

        public void topinfoTicket()
        {
            string sqlinfo = "select sales_id,  sales_time, ordertime, tableno, tokenno,c_id, comment  from sales_payment  where  sales_id = '" + lblInvoNo.Text + "' ";
            DataAccess.ExecuteSQL(sqlinfo);
            DataTable dtinfo = DataAccess.GetDataTable(sqlinfo);

            lblTicketno.Text = dtinfo.Rows[0].ItemArray[0].ToString();
            lblDateTicket.Text = dtinfo.Rows[0].ItemArray[1].ToString();
            lblTimeTicket.Text = dtinfo.Rows[0].ItemArray[2].ToString();
            lblTableNo.Text = dtinfo.Rows[0].ItemArray[3].ToString();
            lblTokenno.Text = dtinfo.Rows[0].ItemArray[4].ToString();
            string nif = dtinfo.Rows[0].ItemArray[5].ToString();
            

            string sql8 = "select * from tbl_customer where nif = '" + nif + "'";
            DataAccess.ExecuteSQL(sql8);
            DataTable dt8 = DataAccess.GetDataTable(sql8);
            DateTime dt = DateTime.Now;
           
                lbltokCustomerTelf.Text = dt8.Rows[0].ItemArray[4].ToString();
                lbltokCustomerEmail.Text = dt8.Rows[0].ItemArray[3].ToString();

                if (dt8.Rows[0].ItemArray[1].ToString() == "9999999999" && dt8.Rows[0].ItemArray[6].ToString() == "9999999999")
            {
                lbltokCustomer.Text = "Consumidor Final";
                lbltokCustomerNif.Text = "XXXXXXXXXX";
            }
            else
            {
                lbltokCustomer.Text = dt8.Rows[0].ItemArray[1].ToString();
                lbltokCustomerNif.Text = dt8.Rows[0].ItemArray[2].ToString();
            }
            


            ///// SQLite   -- Enable/uncomment/open below section if you use SQLite Database and Block Mysql section
            //string sqlTikitem = "  select  '- ' || Qty || '  ' || itemName  || '\nSc:' || note  as 'Items'   from sales_item   where sales_id = '" + lblInvoNo.Text + "' ";

            // /// MySQL  -- Enable/uncomment/open below section if you use MySQL Database and Block Above section 
            string sqlTikitem = "  select  CONCAT( '- ' , qty , '  ' , itemname  , '\nSc:' , note)  as 'Items'   from sales_item   where sales_id = '" + lblInvoNo.Text + "' ";

            DataAccess.ExecuteSQL(sqlTikitem);
            DataTable dtTikitem = DataAccess.GetDataTable(sqlTikitem);
            dtgrdticketitem.ItemsSource = dtTikitem.DefaultView;            
        }

        private void ReceiptForm_Loaded(object sender, RoutedEventArgs e)
        {
            try
            {
                string currencysign = parameter.currencysign;
                topheader();

                string sql = " select  " +
                        " CASE     " +
                        " WHEN taxapply = 1 THEN   CONCAT('TX ' , itemname ) " +
                        " ELSE   itemname  " +
                        " END 'Items'  " +
                        " , qty ,  retailsprice as Price , CONCAT(total)  as Total  " +
                        " , itemcode as ID from sales_item " +
                        " where (sales_id = '" + lblInvoNo.Text + "')";

                DataAccess.ExecuteSQL(sql);
                DataTable dt1 = DataAccess.GetDataTable(sql);
                dtgriditems.ItemsSource = dt1.DefaultView;

                string sql3 = "select SUM(total)   from sales_item  where sales_id = '" + lblInvoNo.Text + "'";
                DataAccess.ExecuteSQL(sql3);
                DataTable dt3 = DataAccess.GetDataTable(sql3);

                string sql6 = "select * from sales_payment  where (sales_id = '" + lblInvoNo.Text + "')";
                DataAccess.ExecuteSQL(sql6);
                DataTable dt6 = DataAccess.GetDataTable(sql6);


                DataRow dr = dt1.NewRow();
                dr[0] = "";                
                dt1.Rows.Add(dr);

                DataRow Total = dt1.NewRow();
                Total[4] = "Sub Total : ";
                Total[3] = dt3.Rows[0].ItemArray[0].ToString()+ currencysign;
                dt1.Rows.Add(Total);

                DataRow dis = dt1.NewRow();
                dis[4] = "Desconto : "; //+ dt6.Rows[0].ItemArray[13].ToString() + " %";
                dis[3] = dt6.Rows[0].ItemArray[5].ToString() + currencysign;
                dt1.Rows.Add(dis);

                DataRow dr0 = dt1.NewRow();
                dr0[4] = "Imposto por: "; //+ dt6.Rows[0].ItemArray[14].ToString() + " %";
                dr0[3] = dt6.Rows[0].ItemArray[6].ToString()+ currencysign;
                dt1.Rows.Add(dr0);


                DataRow dr2 = dt1.NewRow();
                dr2[4] = "Quantia líquida :  ";
                dr2[3] = dt6.Rows[0].ItemArray[2].ToString() + currencysign;
                dt1.Rows.Add(dr2);

                DataRow drLine = dt1.NewRow();
                drLine[4] = "-------------------------------------------------------------------------------------------------------------------------------------------";
                dt1.Rows.Add(drLine);

                //DataRow dr3 = dt1.NewRow();
                //dr3[0] = dt6.Rows[0].ItemArray[1].ToString() + " Pay";              
                //dt1.Rows.Add(dr3);

                double paidamount = (Convert.ToDouble(dt6.Rows[0].ItemArray[2].ToString()) + Convert.ToDouble(dt6.Rows[0].ItemArray[3].ToString())) - Convert.ToDouble(dt6.Rows[0].ItemArray[4].ToString());
                DataRow dr4 = dt1.NewRow();
                dr4[4] = dt6.Rows[0].ItemArray[1].ToString();
                dr4[3] = paidamount.ToString() + currencysign;
                dt1.Rows.Add(dr4);

                DataRow dr5 = dt1.NewRow();
                dr5[4] = "Troco : ";
                dr5[3] = dt6.Rows[0].ItemArray[3].ToString() + currencysign;
                dt1.Rows.Add(dr5);

                DataRow due = dt1.NewRow();
                due[4] = "Divida : ";
                due[3] = dt6.Rows[0].ItemArray[4].ToString() + currencysign;
                dt1.Rows.Add(due);

                DataRow dr6 = dt1.NewRow();
                dr6[4] = "";
                dt1.Rows.Add(dr6);

                //DataRow dr7 = dt1.NewRow();
                //dr7[0] = "*TX: TAX Apply";
                //dt1.Rows.Add(dr7);

                DataRow dr8 = dt1.NewRow();
                dr8[4] = parameter.footermsg + "\n\n hash-Processado por programa";
                dt1.Rows.Add(dr8);

                DataRow dr9 = dt1.NewRow();
                dr8[3] = parameter.footermsg + "validado nº 00/AGT/2021";
                dt1.Rows.Add(dr9);
                //DataRow dr9 = dt1.NewRow();
                //dr9[0] = "||| || |||| ||||||";
                //dt1.Rows.Add(dr9);

                //DataRow emp = dt1.NewRow();
                //emp[0] = "Served by: " + dt6.Rows[0].ItemArray[9].ToString();
                //dt1.Rows.Add(emp);

                //DataRow dr8 = dt1.NewRow();
                //dr8[0] = "Recipt No : " + dt6.Rows[0].ItemArray[0].ToString();
                //dt1.Rows.Add(dr8);

                //DataRow credit = dt1.NewRow();
                //credit[0] = "citkar@live.com";
                //dt1.Rows.Add(credit);

                lblInvoNo.Text = dt6.Rows[0].ItemArray[0].ToString();
                lbltoknNo.Text = dt6.Rows[0].ItemArray[17].ToString();
                lblservedby.Text = dt6.Rows[0].ItemArray[9].ToString();
                lblPrintDate.Text = DateTime.Now.ToString("dd-MM-yyyy hh:mm:ss tt");

                topinfoTicket();
                switch_language();
            }
            catch
            {
            }
        }

        public void Autoprint()
        {
            dtgriditems.Items.Refresh();
            System.Windows.Controls.PrintDialog Printdlg = new System.Windows.Controls.PrintDialog();
            if ((bool)Printdlg.ShowDialog().GetValueOrDefault())
            {
                Size pageSize = new Size(Printdlg.PrintableAreaWidth, Printdlg.PrintableAreaHeight);
                // Size pageSize = new Size(340, 194);
                // sizing of the element.
                grdPrintPanel.Measure(pageSize);
                grdPrintPanel.Arrange(new Rect(0, 0, pageSize.Width, pageSize.Height));
                Printdlg.MaxPage = 10;
                Printdlg.PrintVisual(grdPrintPanel, "POS_Print_" + DateTime.Now.ToString("dd-MM-yyyy_hh-mm-ss"));
            }
        }

        private void btnPrint_Click(object sender, RoutedEventArgs e)
        {
            Autoprint();        
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            //// if 1 from SR it's back to SR
            if (parameter.autoprint == "1")
            {
                //this.Visibility = Visibility.Hidden;
                //Sales_Register.SalesRegister go = new Sales_Register.SalesRegister();
                //go.Show();
                this.Visibility = Visibility.Hidden;
                if (UserInfo.DefaulfSRWindow == "2")
                {
                    Sales_Register.SalesRegisterPink go = new Sales_Register.SalesRegisterPink();
                    go.Show();
                }
                else
                {
                    Sales_Register.SalesRegister go = new Sales_Register.SalesRegister();
                    go.Show();
                }   
            }
            else // if open from Report page it's close 
            {
                this.Close();
            }
         
        }

        private void btnPrintTicket_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                dtgrdticketitem.Items.Refresh();
                System.Windows.Controls.PrintDialog Printdlg = new System.Windows.Controls.PrintDialog();
                if ((bool)Printdlg.ShowDialog().GetValueOrDefault())
                {
                    Size pageSize = new Size(Printdlg.PrintableAreaWidth, Printdlg.PrintableAreaHeight);
                    // Size pageSize = new Size(340, 194);
                    // sizing of the element.
                    grdTicketPrintPanel.Measure(pageSize);
                    grdTicketPrintPanel.Arrange(new Rect(0, 0, pageSize.Width, pageSize.Height));
                    Printdlg.MaxPage = 10;
                    Printdlg.PrintVisual(grdTicketPrintPanel, "Ticket_Print_" + DateTime.Now.ToString("dd-MM-yyyy_hh-mm-ss"));
                }
            }
            catch
            {

            }
        }

        private void switch_language()
        {
            res_man = new ResourceManager("RestPOS.Resource.Res", typeof(Home).Assembly);
            if (language.ID == "1")
            {
                cul = CultureInfo.CreateSpecificCulture(language.languagecode);
                btnPrint.Content = res_man.GetString("btnPrint", cul);
                lbltokenPNTtitle.Text = res_man.GetString("lbltokenPNTtitle", cul);
                lblinvoicePNTtile.Text = res_man.GetString("lblinvoicePNTtile", cul);
                lblsvrPNTtitle.Text = res_man.GetString("lblsvrPNTtitle", cul);
                lblticketPNTtitle.Text = res_man.GetString("lblticketPNTtitle", cul);
                lbltimePNTtitle.Text = res_man.GetString("lbltimePNTtitle", cul);
                lbltablePNTtitle.Text = res_man.GetString("lbltablePNTtitle", cul);
                lblinvoiceNoPNTtitle.Text = res_man.GetString("lblinvoiceNoPNTtitle", cul);

                lbldatePNTtitle.Text = res_man.GetString("lbldatetitle", cul);
                lbltakennoPNTtitle.Text = res_man.GetString("lbltokonnoSRtitle", cul);
                btnPrintTicket.Content = res_man.GetString("btnPrint", cul);
                btnClose.Content = res_man.GetString("btnHomeMenuLink", cul);
                lbltakennoPNTtitle.Text = res_man.GetString("lbltokonnoSRtitle", cul);
            }
            else
            {
                // englishToolStripMenuItem.Checked = true;
            }
        }
    }
}
