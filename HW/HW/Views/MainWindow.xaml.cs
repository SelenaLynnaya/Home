using HW.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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

namespace HW
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        private void OkButton_Click(object sender, RoutedEventArgs e)
        {


            String login = TextBoxLogin.Text;
            String password = PasswordBoxPassword.Password;
            using (var db = new ModelOrders())
            {
                try
                {
                    var user = db.Users.FirstOrDefault(u => u.Login == login && u.Password == password);

                    if (user == null)
                        throw new Exception("Полькователя не существует");
                    Manager window = new Manager();
                    window.Show();
                }
                catch (Exception)
                {
                    MessageBox.Show("Неправильный логин или пороль", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }
                

            }
            Close();
        }
        private void CheckBoxPassword_Checked(object sender, RoutedEventArgs e)
        {
            if (CheckBoxPassword.IsChecked == true)
            {
                PasswordBoxPassword.Visibility = Visibility.Hidden;
                TextBoxPassword.Visibility = Visibility.Visible;
                TextBoxPassword.Text = PasswordBoxPassword.Password;
            }
        }

        private void CheckBoxPassword_Unchecked(object sender, RoutedEventArgs e)
        {

            PasswordBoxPassword.Visibility = Visibility.Visible;
            TextBoxPassword.Visibility = Visibility.Visible;
            TextBoxPassword.Text = PasswordBoxPassword.Password;
            
        }
    }
}
