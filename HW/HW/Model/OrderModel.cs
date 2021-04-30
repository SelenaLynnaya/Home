using HW.Entities;
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
        public string OrderName { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Patronymic { get; set; }
        public string ProductName { get; set; }
        public decimal Price { get; set; }
        public int Amount { get; set; }


        public static OrderModel ModelOrderSale(Order context)
        {
            var database = new ModelOrders();
            return new OrderModel
            {
                Id = context.Id,
                OrderName = context.Name,
                FirstName = context.Client.UserData.Surname,
                LastName = context.Client.UserData.Name,
                Patronymic = context.Client.UserData.Patronymic,
                Price = context.ListOfOrder.Where(o => o.OrderId == context.Id).Select(o => o.Products).Sum(p => p.Price),
                Amount = context.ListOfOrder.Where(o => o.OrderId == context.Id).Select(o => o.Products).Count(),
                ProductName=context.ListOfOrder.FirstOrDefault(o => o.OrderId == context.Id).Products.Name
            };
        }

        public static  Order ModelOrderSale(OrderModel context)
        {
            using (var db = new ModelOrders())
            {
                var user = db.Order.FirstOrDefault(u => u.Id == context.Id);
                return user;
            }
        }
    }
}
