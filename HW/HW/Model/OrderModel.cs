using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.Model
{
    public class OrderModel
    {
        public int Id { get; set; }

        public static OrderModel ModelOrder(HW.NewFolderOrders.Order context)
        {
            return new OrderModel
            {

            };
        }

        public static HW.NewFolderOrders.Order ModelOrder(OrderModel context)
        {
            using (var db = new HW.NewFolderOrders.ModelOrders())
            {
                var user = db.Order.FirstOrDefault(u => u.Id == context.Id);
                return user;
            }
        }
    }
}
