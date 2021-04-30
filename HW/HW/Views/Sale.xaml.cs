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
    /// Логика взаимодействия для Sale.xaml
    /// </summary>
    public partial class Sale : Window
    {
        public Sale()
        {
            InitializeComponent();
            DataContext = new OrderViewModel();
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
            String product = NameProductText.Text;
            String price = PriceText.Text;

            using(var db= new ModelOrders())
            {
                try
                {
                    if(string.IsNullOrEmpty(lastname) || string.IsNullOrWhiteSpace(lastname) || string.IsNullOrEmpty(firstname)||string.IsNullOrWhiteSpace(firstname)
                        || string.IsNullOrEmpty(patronymic) || string.IsNullOrWhiteSpace(patronymic) || string.IsNullOrEmpty(name) || string.IsNullOrWhiteSpace(name)
                        || string.IsNullOrEmpty(product) || string.IsNullOrWhiteSpace(product) || string.IsNullOrEmpty(price) || string.IsNullOrWhiteSpace(price))
                        throw new Exception("Не существует");

                }
                catch(Exception)
                {
                    MessageBox.Show("Не внесены все данные", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                try
                {
                    db.UserData.Add(
                        new UserData()
                        {
                            Id = 0,
                            Surname = lastname,
                            Name = firstname,
                            Patronymic = patronymic
                        });
                    db.SaveChanges();
                    db.Order.Add(
                        new Order()
                        {
                            Id = 0,
                            Name = name
                        });
                    db.Products.Add(
                        new Products()
                        {
                            Id = 0,
                            Name=product,
                            Price = Convert.ToDecimal(price)
                        });
                    db.SaveChanges();
                    throw new Exception("Полькователя не существует");
                }
                catch (Exception)
                {

                    MessageBox.Show("Новый заказ", "Заказ", MessageBoxButton.OK, MessageBoxImage.Information);
                    this.Close();
                    return;
                }
            }
        } 
    } 
}