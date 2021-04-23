﻿using System;
using System.Collections.Generic;
using System.Text;
using System.ComponentModel.DataAnnotations;
namespace CSRPulse.Model
{
   public class Customer:BaseModel
    {
        public int CustomerId { get; set; }
        public string CustomerCode { get; set; }
        [Display(Name ="Name")]
        [Required (ErrorMessage ="Please Enter Name")]
        public string CustomerName { get; set; }
        [Display(Name = "Address")]
        public string Address { get; set; }
        [Display(Name = "Country")]
        public string Country { get; set; }
        [Display(Name = "State")]
        public int? StateId { get; set; }
        [Display(Name = "City")]
        public string City { get; set; }
        [Display(Name = "Pin Code")]
        public string PostalCode { get; set; }
        [Display(Name = "Phone No.")]
        [Required(ErrorMessage ="Please Enter Phone No.")]
        public string Telephone { get; set; }
        [Display(Name = "Work Email")]
        [Required(ErrorMessage = "Please Enter Work Email")]
        [StringLength(50, ErrorMessage = "{0} not be exceed 50 char")]
        [DataType(DataType.EmailAddress, ErrorMessage = "Invalid email.")]
        [RegularExpression(@"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$", ErrorMessage = "Invalid email.")]
        public string Email { get; set; }
        [Display(Name = "Website")]
        public string Website { get; set; }
        public string DataBaseName { get; set; }

        [Required(ErrorMessage ="Please select term & condition")]
        public bool IsAgree { get; set; }

    }
}
