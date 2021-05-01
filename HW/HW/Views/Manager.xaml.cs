using HW.Entities;
using HW.Model;
using System;
using System.Collections.Generic;
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
namespace HW
{
    /// <summary>
    /// Логика взаимодействия для Manager.xaml
    /// </summary>
    public partial class Manager : Window
    {
        public Manager()
        {
            InitializeComponent();
        }
        public Manager(UserData user)
        {
            InitializeComponent();
            LoginLabel.Content = user.Name;
            DataContext = new OrderViewModel();
        }

        private void SaleButton_Click(object sender, RoutedEventArgs e)
        {
            Sale sale = new Sale();
            sale.Show();
        }

        private void Sort_By_NumberButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Sort_By_NameButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void DataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
        }
    }
}
