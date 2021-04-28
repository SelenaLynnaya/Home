using HW.Entities;
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
    /// Логика взаимодействия для Sale.xaml
    /// </summary>
    public partial class Sale : Window
    {
        public Sale()
        {
            InitializeComponent();
        }

        private void BackUserButton_Click(object sender, RoutedEventArgs e)
        {
            Manager manager = new Manager();
            manager.Show();
            Close();
        }

        private void CreateUserButton_Click(object sender, RoutedEventArgs e)
        {

            String lastname = LastNameText.Text;
            String firstname = FirstNameText.Text;
            String patronymic = PatronymicText.Text;
            String name = NameText.Text;
            String amount = AmountText.Text;
            String price = PriceText.Text;
        } 
    } 
}