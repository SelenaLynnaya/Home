using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.Model
{
    public class UserModel
    {
        public int Id { get; set; }

        public string Login { get; set; }

        public string Password { get; set; }

        public string UserId { get; set; }

        public static UserModel ModelOrder(HW.NewFolderOrders.Users context)
        {
            return new UserModel
            {
                Id = context.Id,
                Login = context.Login,
                Password = context.Password,
                UserId = context.UserData.Name
            };
        }

        public static HW.NewFolderOrders.Users ModelOrder(UserModel context)
        {
            using (var db = new HW.NewFolderOrders.ModelOrders())
            {
                var user = db.Users.FirstOrDefault(u => u.Id == context.Id);
                return user;
            }
        }
    }
}
