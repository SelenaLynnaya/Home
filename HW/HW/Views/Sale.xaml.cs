using HW.Entities;
using HW.Model;
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
            String product = NameProductText.Text;
            String name = NameText.Text;
            String price = PriceText.Text;
            //try
            //{
            using (var db = new ModelOrders())
            {

                db.UserData.Add(new UserData()
                {
                    Surname = lastname,
                    Name = firstname,
                    Patronymic = patronymic
                });

                db.SaveChanges();
                db.Order.Add(new Order()
                {
                    ClientId=1,
                    Name = name
                });
                db.SaveChanges();
                db.Products.Add(new Products()
                {
                    Name=product,
                    Price = Convert.ToDecimal(price)
                });
                db.SaveChanges();

                //try
                //{
                //    if (string.IsNullOrEmpty(lastname) || string.IsNullOrWhiteSpace(lastname) || string.IsNullOrEmpty(firstname) || string.IsNullOrWhiteSpace(firstname)
                //        || string.IsNullOrEmpty(patronymic) || string.IsNullOrWhiteSpace(patronymic) || string.IsNullOrEmpty(name) || string.IsNullOrWhiteSpace(name)
                //        || string.IsNullOrEmpty(price) || string.IsNullOrWhiteSpace(price))
                //        throw new Exception("Не существует");

                //}
                //catch (Exception)
                //{
                //    MessageBox.Show("Не внесены все данные", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                //    return;
                //}
            }
            Close();
            //throw new Exception();
            //}
            //catch (Exception)
            //{
            //    MessageBox.Show("Новый заказ", "Заказ", MessageBoxButton.OK, MessageBoxImage.Information);
            //    Close();
            //}
        } 
    } 
}