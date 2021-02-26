using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CreditCard.Models
{
    public class CommonViewModel
    {
        public CreditCards CreditCardViewM { get; set; }

        [Display(Name = "CreditCardsList")]
        public List<CreditCards> CreditCardsList { get; set; }
    }
}