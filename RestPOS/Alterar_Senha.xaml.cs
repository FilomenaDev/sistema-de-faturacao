using System;
using System.Collections.Generic;
using System.Diagnostics;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace RestPOS
{
    /// <summary>
    /// Interaction logic for Alterar_Senha.xaml
    /// </summary>
    public partial class Alterar_Senha : Window
    {
        private const double topOffset = 180;
        private const double leftOffset = 780;
        readonly GrowlNotifiactions growlNotifications = new GrowlNotifiactions();
        public Alterar_Senha()
        {
            InitializeComponent();
            growlNotifications.Top = SystemParameters.WorkArea.Top + topOffset;
            growlNotifications.Left = SystemParameters.WorkArea.Left + SystemParameters.WorkArea.Width - leftOffset;
           // ResulationHW();
            txtNameUser.Text = UserInfo.UserName;
        }

     
        private void btnAlterar_Click(object sender, RoutedEventArgs e)
        {
            if(txtNovaSenha.Password.ToString() == txtConfirmaSenha.Password.ToString() ){

            string sql = " UPDATE usermgt set  password = '" + txtNovaSenha.Password.ToString()+ "' " +
                        " where (id = '" + UserInfo.Userid + "' )";
            DataAccess.ExecuteSQL(sql);
            workRecords();
            Login go = new Login();
            go.Show();
            this.Hide();
            }else{
                growlNotifications.AddNotification(new Notification { Title = "Alert Message", Message = "Verifica a senha", ImageUrl = "pack://application:,,,/Notifications/Radiation_warning_symbol.png" }); 
            }
        }

        private void btnCancelar_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }

        public void workRecords()
        {
            string logdate = DateTime.Now.ToString("yyyy-MM-dd");
            string logtime = DateTime.Now.ToString("HH:mm:ss");
            string logdatetime = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");

            string sqlLogIn = " insert into tbl_workrecords (Username, datatype, logdate, logtime, logdatetime) " +
                                 " values ('" + txtNameUser.Text + "' , 'OUT' , '" + logdate + "' , " +
                                  " '" + logtime + "' , '" + logdatetime + "'  )";
            DataAccess.ExecuteSQL(sqlLogIn);
        }

    }
}
