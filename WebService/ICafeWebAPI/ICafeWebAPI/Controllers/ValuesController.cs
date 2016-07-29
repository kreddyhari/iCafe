using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using ICafeWebAPI.DataModel;

namespace ICafeWebAPI.Controllers
{
    public class ValuesController : ApiController
    {
        ICafeEntities objDBEntities = new ICafeEntities();
        // GET api/values        
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/values/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/values
        public void AddItem(M_Items item)
        {
            objDBEntities.M_Items.Add(item);
        }

        // POST api/values
        public void AddItemCategory(M_ItemCategories itemCategory)
        {
            objDBEntities.M_ItemCategories.Add(itemCategory);
        }


        // PUT api/values/5

        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        public void Delete(int id)
        {
            
        }

        // DELETE api/values/5
        public void DeleteItemMaster(int id)
        {
            M_Items item=objDBEntities.M_Items.FirstOrDefault<M_Items>(x=>x.Id==id);
            objDBEntities.M_Items.Remove(item);
        }

        // DELETE api/values/5
        public void DeleteItemCategoryMaster(int id)
        {
            M_ItemCategories item = objDBEntities.M_ItemCategories.FirstOrDefault<M_ItemCategories>(x => x.Id == id);
            objDBEntities.M_ItemCategories.Remove(item);
        }
    }
}