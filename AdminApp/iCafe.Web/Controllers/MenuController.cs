using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using iCafe.Web.ViewModels;

namespace iCafe.Web.Controllers
{
    public class MenuController : Controller
    {
        //
        // GET: /Menu/
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Categories()
        {
            var model = new Categories()
            {
                CategoryList = new List<Category>() { 
                    new Category() { Id = 1, Title = "Biryani", Description = "There are various forms of Hyderabadi biryani.", TotalItems=8, Discount=0.00f, ImagePath="~/Images/Menu/Categories/biryani.jpg" },
                    new Category() { Id = 2, Title = "Rotis", Description = "Roti is a flat bread originating from the Indian subcontinent.", TotalItems=10, Discount=5.00f, ImagePath="~/Images/Menu/Categories/rotis.jpg" },
                    new Category() { Id = 3, Title = "Curries", Description = "Various parts of the sub-continent have their own regional variations of curry.", TotalItems=15, Discount=3.00f, ImagePath="~/Images/Menu/Categories/curries.jpg" },
                    new Category() { Id = 4, Title = "Noodles", Description = "Noodles are made of acorn meal, wheat flour, wheat germ, and salt.", TotalItems=20, Discount=5.00f, ImagePath="~/Images/Menu/Categories/noodles.jpg" },
                    new Category() { Id = 5, Title = "Pizzas", Description = "Pizza bread is a type of sandwich that is often served open-faced.", TotalItems=16, Discount=8.00f, ImagePath="~/Images/Menu/Categories/pizza.jpg" },
                    new Category() { Id = 6, Title = "Beverages", Description = "Any one of various liquids for drinking, usually excluding water.", TotalItems=7, Discount=10.00f, ImagePath="~/Images/Menu/Categories/beverages.jpg" },
                    new Category() { Id = 7, Title = "Desserts", Description = "Dessert is a course that concludes a main meal.", TotalItems=11, Discount=15.00f, ImagePath="~/Images/Menu/Categories/desserts.jpg" },
                },
                DefaultImagePath = "/Images/sorry-image-not-available.png"
            }; 
            return View(model);
        }

        public ActionResult Tags()
        {
            return View();
        }

        public ActionResult Items()
        {
            return View();
        }
	}
}