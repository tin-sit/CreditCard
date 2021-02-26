using CreditCard.Models;
using CreditCard.Repositories;
using Elmah;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;

namespace CreditCard.Controllers
{
    public class CreditCardApiController : ApiController
    {

        private IGenericRepository<CreditCards> repository = null;

        public CreditCardApiController()
        {
            this.repository = new GenericRepository<CreditCards>();
        }

        public CreditCardApiController(IGenericRepository<CreditCards> repository)
        {
            this.repository = repository;
        }

        [System.Web.Http.Route("api/GetAllCreditCards")]
        [System.Web.Http.HttpGet, System.Web.Http.HttpPost]
        public IEnumerable<CreditCards> GetAllCreditCards()
        {
            try
            {
                var lscreditcard = repository.GetAll();
                return lscreditcard;
            }
            catch (Exception ex)
            {
                ErrorSignal.FromCurrentContext().Raise(ex);
                return new List<CreditCards>();
            }
        }

        [System.Web.Http.Route("api/GetCreditCardDetail")]
        [System.Web.Http.HttpGet, System.Web.Http.HttpPost]
        public CreditCards GetCreditCardDetail(long? CreditCardNo)
        {
            try
            {
                var lscreditcard = repository.Get(c => c.CreditCardNo == CreditCardNo);
                return lscreditcard;
            }
            catch(Exception ex) {
                ErrorSignal.FromCurrentContext().Raise(ex);
                return new CreditCards();
            }
        }


        [System.Web.Http.Route("api/StoreCreditCard")]
        [System.Web.Http.HttpGet, System.Web.Http.HttpPost]
        public void StoreCreditCard(CreditCards clientobj)
        {
            try
            {
                repository = new GenericRepository<CreditCards>();

                if (clientobj != null)
                {
                    repository.Insert(clientobj);
                    repository.Save();
                }
            }
            catch (Exception e)
            {
                ErrorSignal.FromCurrentContext().Raise(e);
            }
        }
    }
}