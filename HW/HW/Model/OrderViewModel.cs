using HW.Entities;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HW.Model
{
    public class OrderViewModel
    {
        public ObservableCollection<OrderModel> Order { get; set; }

        public OrderModel SelectedOrder { get; set; }
        public OrderViewModel()
        {
            using (var db = new ModelOrders())
            {
                db.Order.Load();
                Order = new ObservableCollection<OrderModel>();
                foreach (var items in db.Order.Local)
                {
                    Order.Add(OrderModel.ModelOrderSale(items));
                }
            }
        }
    }
}
