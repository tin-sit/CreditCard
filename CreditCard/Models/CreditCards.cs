using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Collections.Generic;
using System.ComponentModel;

namespace CreditCard.Models
{
    [Table("CreditCards")]
    public class CreditCards
    {
        [DisplayName("Name")]
        public string Name { get; set;}
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]

        [DisplayName("Credit Card No")]
        public long CreditCardNo { get; set; }

        [DisplayName("CVC")]
        public int CreditCardCVC { get; set; }
        [DisplayName("Expiry Date")]
        //[DisplayFormat(ApplyFormatInEditMode = true, DataFormatString = "{0:yyyy-MM-dd}")]
        public DateTime ExpiryDate { get; set; }
    }

    
}