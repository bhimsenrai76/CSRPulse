﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;

#nullable disable

namespace CSRPulse.Data.Models
{
    public partial class UserRights
    {
        public int UserID { get; set; }
        public int MenuID { get; set; }
        public bool ShowMenu { get; set; }
        public bool CreateRight { get; set; }
        public bool ViewRight { get; set; }
        public bool EditRight { get; set; }
        public bool DeleteRight { get; set; }
        public int CreatedBy { get; set; }
        public DateTime CreatedOn { get; set; }
        public int? UpdatedBy { get; set; }
        public DateTime? UpdatedOn { get; set; }

        public virtual Menu Menu { get; set; }
    }
}