﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace CSRPulse.Data.Models
{
    public partial class Role
    {
        public Role()
        {
            User = new HashSet<User>();
            UserRoles = new HashSet<UserRoles>();
        }

        [Key]
        public int RoleId { get; set; }
        [Required]
        [StringLength(256)]
        public string RoleName { get; set; }
        [Required]
        [StringLength(10)]
        public string RoleShortName { get; set; }
        public int? Seniorty { get; set; }
        [Required]
        public bool? IsActive { get; set; }
        public int? ReportTo { get; set; }

        [InverseProperty("Role")]
        public virtual ICollection<User> User { get; set; }
        [InverseProperty("Role")]
        public virtual ICollection<UserRoles> UserRoles { get; set; }
    }
}