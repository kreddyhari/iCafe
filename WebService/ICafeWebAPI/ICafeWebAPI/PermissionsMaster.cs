//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ICafeWebAPI
{
    using System;
    using System.Collections.Generic;
    
    public partial class PermissionsMaster
    {
        public PermissionsMaster()
        {
            this.RolesMasters = new HashSet<RolesMaster>();
        }
    
        public int PermissionId { get; set; }
        public string PermissionName { get; set; }
    
        public virtual ICollection<RolesMaster> RolesMasters { get; set; }
    }
}
