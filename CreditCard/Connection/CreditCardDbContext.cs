using CreditCard.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;
using System.Linq;
using System.Web;

namespace CreditCard.Connection
{
    public class CreditCardDbContext : DbContext
    {
        //string strcon = ConfigurationManager.ConnectionStrings["DbConnCreditCard"].ConnectionString;

        public CreditCardDbContext() : base(string.Format("{0}", ConfigurationManager.ConnectionStrings["DbCreditCard"].ConnectionString))
        {
            var a = Database.Connection.ConnectionString;
        }

        public DbSet<CreditCards> CreditCard { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();

            Database.SetInitializer<CreditCardDbContext>(null);
            base.OnModelCreating(modelBuilder);
        }

    }

}
