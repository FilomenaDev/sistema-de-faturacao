﻿using System;
using System.Collections.Generic;
using System.Data;
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

namespace RestPOS.Customer
{
    /// <summary>
    /// Interaction logic for CustomerList.xaml
    /// </summary>
    public partial class CustomerList : Window
    {
        private const double topOffset = 180;
        private const double leftOffset = 780;
        readonly GrowlNotifiactions growlNotifications = new GrowlNotifiactions();
        ResourceManager res_man;
        CultureInfo cul; 
        public CustomerList()
        {
            InitializeComponent();
            growlNotifications.Top = SystemParameters.WorkArea.Top + topOffset;
            growlNotifications.Left = SystemParameters.WorkArea.Left + SystemParameters.WorkArea.Width - leftOffset;
        }

        public void CustomerDatabind()
        {
            if (CombPeopleType.SelectedValue.ToString() == "Todos")
            {
                string sqlCmd = "Select * from  customercredit ";
                DataAccess.ExecuteSQL(sqlCmd);
                DataTable dt1 = DataAccess.GetDataTable(sqlCmd);
                lstvwCustomerslist.ItemsSource = dt1.DefaultView;
                lblItemcount.Text = lstvwCustomerslist.Items.Count.ToString() + " Found";
            }
            else
            {
                string sqlCmd = "Select * from  customercredit  where PeopleType  = '" + CombPeopleType.SelectedValue.ToString() + "'";
                DataAccess.ExecuteSQL(sqlCmd);
                DataTable dt1 = DataAccess.GetDataTable(sqlCmd);
                lstvwCustomerslist.ItemsSource = dt1.DefaultView;
                lblItemcount.Text = lstvwCustomerslist.Items.Count.ToString() + " " + CombPeopleType.SelectedValue.ToString() + " Found";

                if (tabcontrolpanel.SelectedItem != tabCustomerslist)
                {
                    tabcontrolpanel.SelectedItem = tabCustomerslist;
                }
            }
           
        }

        private void CustomerWindows(object sender, RoutedEventArgs e)
        {
            try
            {
                btnAddnew.Visibility = Visibility.Hidden;
                btnDelete.Visibility = Visibility.Hidden;
                CustomerDatabind();
                txtSearch.Focus();
                switch_language();  
            }
            catch
            { }
        }
        
        private void switch_language()
        {
            res_man = new ResourceManager("RestPOS.Resource.Res", typeof(Home).Assembly);
            if (language.ID == "1")
            { 
                cul = CultureInfo.CreateSpecificCulture(language.languagecode);
                lblsearchtitle.Text = res_man.GetString("lblsearchtitle", cul);
                lblpeopletypetitle.Text = res_man.GetString("lblpeopletypetitle", cul);
                lblalltitle.Text = res_man.GetString("lblalltitle", cul);
                tabCustomerslist.Header = res_man.GetString("tabCustomerslist", cul);
                tabCustomersview.Header = res_man.GetString("tabCustomersview", cul);
                lblNametitle.Text = res_man.GetString("lblNametitle", cul);
                lblcontacttitle.Text = res_man.GetString("lblcontacttitle", cul);
                lblemailtitle.Text = res_man.GetString("lblemailtitle", cul);
                lblcitytitle.Text = res_man.GetString("lblcitytitle", cul);
                lbltypetitle.Text = res_man.GetString("lbltypetitle", cul);
                lbladdresstitle.Text = res_man.GetString("lbladdresstitle", cul);
                btnSave.Content = res_man.GetString("btnSave", cul);
                btnAddnew.Content = res_man.GetString("btnAddnew", cul);
                btnDelete.Content = res_man.GetString("btnDelete", cul);
            }
            else
            {
                // englishToolStripMenuItem.Checked = true;
            }

        }

        private void txtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {

                string sqlCmd = " Select * from  customercredit " +
                                " where Name  like  '%" + txtSearch.Text + "%' or " +
                                " ID like  '" + txtSearch.Text + "%'  or " +
                                "  Mobile  like  '" + txtSearch.Text + "%' or " +
                                "  City  like  '" + txtSearch.Text + "%'  or " +
                                " EmailAddress  like  '" + txtSearch.Text + "%'"; 
                DataAccess.ExecuteSQL(sqlCmd);
                DataTable dt1 = DataAccess.GetDataTable(sqlCmd);
                lstvwCustomerslist.ItemsSource = dt1.DefaultView;
                lblItemcount.Text = lstvwCustomerslist.Items.Count.ToString() + " Customers Found";
                if (tabcontrolpanel.SelectedItem != tabCustomerslist)
                {
                    tabcontrolpanel.SelectedItem = tabCustomerslist;
                }
                
            }
            catch
            {
            }
        }

        private void CombPeopleType_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                    lblalltitle.Text = CombPeopleType.SelectedValue.ToString();
                    CustomerDatabind();
            } 
            catch
            {
            }  
       
        }

        private void lstvwCustomerslist_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
             
            string Barcode = "";
            foreach (DataRowView row in lstvwCustomerslist.SelectedItems)
            {
                Barcode = row.Row[0].ToString();
            }

            tabcontrolpanel.SelectedItem = tabCustomersview; 
            tabCustomersview.Header = "Customer Details View";
            lblCustID.Text = Barcode;
            lblmsg.Text = "-";
            DetailsData(lblCustID.Text);            
        }
        
        private void lstvwCustomerslist_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            string Barcode = "";
            foreach (DataRowView row in lstvwCustomerslist.SelectedItems)
            {
                Barcode = row.Row[0].ToString();
            }

            tabcontrolpanel.SelectedIndex = 1; 
            tabCustomersview.Header = "Customer Details View";
            lblCustID.Text = Barcode;
            DetailsData(lblCustID.Text);
        }

        private void DetailsData(string vle)
        {
            string sqlCmd = "Select * from  customercredit  where ID  = '" + vle.ToString() + "'";
            DataAccess.ExecuteSQL(sqlCmd);
            DataTable dt1 = DataAccess.GetDataTable(sqlCmd);
            txtCustomerName.Text    = dt1.Rows[0].ItemArray[1].ToString();
            txtPhone.Text           = dt1.Rows[0].ItemArray[2].ToString();
            txtCustomerAddress.Text = dt1.Rows[0].ItemArray[3].ToString();                  
            txtEmailAddress.Text    = dt1.Rows[0].ItemArray[4].ToString();
            txtCity.Text            = dt1.Rows[0].ItemArray[5].ToString();
            txtNif.Text            = dt1.Rows[0].ItemArray[6].ToString();
            CombType.Text           = dt1.Rows[0].ItemArray[7].ToString();
            btnAddnew.Visibility = Visibility.Visible;
            btnDelete.Visibility = Visibility.Hidden;
            btnSave.Content = "Atualizar";
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (lblCustID.Text == "-")
                { 
                    if (txtCustomerName.Text == "") 
                    {
                        growlNotifications.AddNotification(new Notification { Title = "Alert Message", Message = "Por Favor Insera o Cliente", ImageUrl = "pack://application:,,,/Notifications/Radiation_warning_symbol.png" });
                        txtCustomerName.Focus(); 
                    }
                    else if (txtNif.Text == "")
                    {
                        growlNotifications.AddNotification(new Notification { Title = "Alert Message", Message = "Por Favor Insera o Nif", ImageUrl = "pack://application:,,,/Notifications/Radiation_warning_symbol.png" });
                        txtNif.Focus();
                    }
                    else if (CombType.Text == "") {
                        growlNotifications.AddNotification(new Notification { Title = "Alert Message", Message = "Por Favor Insera Tipo", ImageUrl = "pack://application:,,,/Notifications/Radiation_warning_symbol.png" }); 
                        CombType.Focus();
                    }
                    else if (txtCity.Text == "") { 
                        growlNotifications.AddNotification(new Notification { Title = "Alert Message", Message = "Por Favor Insera Cidade", ImageUrl = "pack://application:,,,/Notifications/Radiation_warning_symbol.png" });
                        txtCity.Focus(); }
                    else if (txtCustomerAddress.Text == "") {
                        growlNotifications.AddNotification(new Notification { Title = "Alert Message", Message = "Por Favor Insera o Endereço", ImageUrl = "pack://application:,,,/Notifications/Radiation_warning_symbol.png" });
                        txtCustomerAddress.Focus(); }
                    else
                    {
                        string sqlCmd = "insert into tbl_customer (Name, EmailAddress, Phone, address, City, PeopleType, nif) " + 
                                        " values ('" + txtCustomerName.Text + "', '" + txtEmailAddress.Text + "', '" + txtPhone.Text + "', '" + txtCustomerAddress.Text + "', " 
                                        + " '" + txtCity.Text + "', '" + CombType.SelectedValue.ToString() + "', '" + txtNif.Text + "')";
                        DataAccess.ExecuteSQL(sqlCmd);
                        lblmsg.Text = "Salvo Successo";                         
                        CustomerDatabind();
                        clearform();
                    }
                }
                else  //Update 
                {
                    string sqlUpdateCmd = "update tbl_customer set Name = '" + txtCustomerName.Text + "', EmailAddress= '" + txtEmailAddress.Text + "', " + 
                        " address = '" + txtCustomerAddress.Text + "', Phone = '" + txtPhone.Text + "', City = '" + txtCity.Text + "' , " + 
                        " PeopleType = '" + CombType.SelectedValue.ToString() + "', nif = '" + txtNif.Text + "'   where ID = '" + lblCustID.Text + "'";
                    DataAccess.ExecuteSQL(sqlUpdateCmd);
                    growlNotifications.AddNotification(new Notification { Title = "Wow ", Message = "Successfully Updated", ImageUrl = "pack://application:,,,/Notifications/notification-icon.png" });
        
                   // lblmsg.Text = "Successfully Updated";                    
                    DetailsData(lblCustID.Text);
                }


            }
            catch (Exception exp)
            {
                MessageBox.Show("Sorry\r\n this id already added \n\n " + exp.Message);
            }
        }

        private void AddNew_Click(object sender, RoutedEventArgs e)
        {
            clearform();
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {  

                if (lblCustID.Text == "-")
                {
                   growlNotifications.AddNotification(new Notification { Title = "Question ??", Message = "You are Not able to Delete", ImageUrl = "pack://application:,,,/Notifications/Radiation_warning_symbol.png" });
                
                   // MessageBox.Show("You are Not able to Delete", "Question", MessageBoxButton.OK, MessageBoxImage.Warning);
                }
                else
                {
                    try
                    {
                        if (MessageBox.Show("Tem certeza que quer eliminar?", "Question", MessageBoxButton.YesNo, MessageBoxImage.Warning) == MessageBoxResult.Yes)
                        {
                            string sql = "delete from tbl_customer where  ID = '" + lblCustID.Text + "' ";
                            DataAccess.ExecuteSQL(sql);
                            lblmsg.Text = "Has been Deleted";
                            clearform();
                          //  tabcontrolpanel.SelectedItem = tabCustomerslist;
                            CustomerDatabind();
                            //   
                            
                        }
 

                    }
                    catch //(Exception exp)
                    {
                       // MessageBox.Show("Sorry\r\n You have to Check the Data" + exp.Message);
                    }
                }
            
        }
       
        private void clearform()
        {
            CombType.Text           = string.Empty;
            txtCity.Text            = string.Empty;
            txtCustomerName.Text    = string.Empty;
            txtCustomerAddress.Text = string.Empty;
            txtPhone.Text           = string.Empty;
            txtEmailAddress.Text    = string.Empty;
            btnSave.Content         = "Save";
            lblCustID.Text          = "-";
        }

        private void btnHomeMenuLink_Click(object sender, RoutedEventArgs e)
        {
            this.Visibility = Visibility.Hidden;
            Home go = new Home();
            go.Show();

        }


    

         
    }
}
