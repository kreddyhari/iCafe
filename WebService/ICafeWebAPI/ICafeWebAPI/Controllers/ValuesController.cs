using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ICafeWebAPI.Controllers
{
    public class ValuesController : ApiController
    {
        ICafeDBEntities objDBEntities = new ICafeDBEntities();
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
        public void AddItem(ItemsMaster item)
        {            
            objDBEntities.ItemsMasters.Add(item);
        }

        // POST api/values
        public void AddItemCategory(ItemCategoriesMaster itemCategory)
        {
            objDBEntities.ItemCategoriesMasters.Add(itemCategory);
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
            ItemsMaster item=objDBEntities.ItemsMasters.FirstOrDefault<ItemsMaster>(x=>x.ItemId==id);
            objDBEntities.ItemsMasters.Remove(item);
        }

        // DELETE api/values/5
        public void DeleteItemCategoryMaster(int id)
        {
            ItemCategoriesMaster item = objDBEntities.ItemCategoriesMasters.FirstOrDefault<ItemCategoriesMaster>(x => x.ItemCategoryId== id);
            objDBEntities.ItemCategoriesMasters.Remove(item);
        }
    }
}