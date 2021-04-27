using HW.NewFolderOrders;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.Model
{
    public class UserViewModel
    {
        public ObservableCollection<UserModel> Users { get; set; }

        public UserModel SelectedUser { get; set; }
        public UserViewModel()
        {
            using (var db = new ModelOrders())
            {
                db.Users.Load();
                Users = new ObservableCollection<UserModel>();
                foreach (var item in db.Users.Local)
                {
                    Users.Add(UserModel.ModelOrder(item));
                }
            }
        }
    }
}
