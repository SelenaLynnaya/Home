﻿using System;
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
        public string login = "login1";
        public string password = "tuptup";
        private void OkButton_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (TextBoxLogin.Text == login && PasswordBoxPassword.Password == password)
                {
                    Manager window = new Manager();
                    window.Show();
                }
                else throw new Exception("Полькователя не существует");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Неправильный логин или пороль","Ошибка",MessageBoxButton.OK,MessageBoxImage.Error);
                return;
            }

            Close();
        }
    }
}