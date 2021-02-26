using CreditCard.Models;
using Elmah;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace CreditCard.Controllers
{
    public class ClientController : Controller
    {
         
        // GET: /Account/Register  
        [AllowAnonymous]
        public async Task<ActionResult> StoreViewCredtCards()
        {
            ViewBag.Message = string.Empty;
            // Initialization.  
            CommonViewModel model = new CommonViewModel();
            try
            {
                // Get Result  
                model.CreditCardViewM = new CreditCards();
                model.CreditCardViewM.ExpiryDate = DateTime.Now;
                model.CreditCardsList = await LoadData();
            }
            catch (Exception ex)
            {
                ErrorSignal.FromCurrentContext().Raise(ex);
            }
            return View(model);
        }

        //Hosted web API REST Service base url  
        
        string Baseurl = string.Format("{0}:{1}", "https://localhost", System.Web.HttpContext.Current.Request.Url.Port.ToString());
        public async Task<ActionResult> Index()
        {
            List<CreditCards> CreditCardInfo = new List<CreditCards>();

            using (var client = new HttpClient())
            {
                //Passing service base url  
                client.BaseAddress = new Uri(Baseurl);

                client.DefaultRequestHeaders.Clear();
                //Define request data format  
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                //Sending request to find web api REST service resource GetAllCreditCards using HttpClient  
                HttpResponseMessage Res = await client.GetAsync("api/GetAllCreditCards");

                //Checking the response is successful or not which is sent using HttpClient  
                if (Res.IsSuccessStatusCode)
                {
                    //Storing the response details recieved from web api   
                    var EmpResponse = Res.Content.ReadAsStringAsync().Result;

                    //Deserializing the response recieved from web api and storing into the Credicard list  
                    CreditCardInfo = JsonConvert.DeserializeObject<List<CreditCards>>(EmpResponse);

                }
                //returning the employee list to view  
                return View(CreditCardInfo);
            }
        }

        public async Task<List<CreditCards>> LoadData()
        {
            List<CreditCards> CreditCardInfo = new List<CreditCards>();

            using (var client = new HttpClient())
            {
                //Passing service base url  
                client.BaseAddress = new Uri(Baseurl);

                client.DefaultRequestHeaders.Clear();
                //Define request data format  
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                //Sending request to find web api REST service resource GetAllCreditCards using HttpClient  
                HttpResponseMessage Res = await client.GetAsync("api/GetAllCreditCards");

                //Checking the response is successful or not which is sent using HttpClient  
                if (Res.IsSuccessStatusCode)
                {
                    //Storing the response details recieved from web api   
                    var EmpResponse = Res.Content.ReadAsStringAsync().Result;

                    //Deserializing the response recieved from web api and storing into the Credicard list  
                    CreditCardInfo = JsonConvert.DeserializeObject<List<CreditCards>>(EmpResponse);

                }
                //returning the employee list to view  
                return CreditCardInfo;
            }

        }

        // POST: /Account/Register  
        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> StoreBankCard(CommonViewModel model)
        {
            CommonViewModel Resultmodel = new CommonViewModel();
            if (ModelState.IsValid)
            {
                // Inserting.  
                await StoreData(model.CreditCardViewM);

                // Get Result  
                // Initialization.  

                // Get Result  
                Resultmodel.CreditCardViewM = new CreditCards();
                Resultmodel.CreditCardsList = await LoadData();
            }

            // If we got this far, something failed, redisplay form  
            return View("StoreViewCredtCards", Resultmodel);
        }

        /// <summary>  
        /// Store data method.  
        /// </summary>  
        public async Task<List<CreditCards>> StoreData(CreditCards crdobj)
        {
            ViewBag.Message = string.Empty;

            List <CreditCards> CreditCardInfo = new List<CreditCards>();

            using (var client = new HttpClient())
            {
                //Passing service base url  
                client.BaseAddress = new Uri(Baseurl);

                client.DefaultRequestHeaders.Clear();
                //Define request data format  
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                //Sending request to find web api REST service resource GetAllCreditCards using HttpClient  
                HttpResponseMessage Res = await client.PostAsJsonAsync("api/StoreCreditCard/", crdobj);


                //Checking the response is successful or not which is sent using HttpClient  
                if (Res.IsSuccessStatusCode)
                {
                    //Storing the response details recieved from web api   
                    var EmpResponse = Res.Content.ReadAsStringAsync().Result;

                    //Deserializing the response recieved from web api and storing into the Credicard list  
                    CreditCardInfo = JsonConvert.DeserializeObject<List<CreditCards>>(EmpResponse);

                    ViewBag.Message = "Credit Card Created Successfully.";

                }
                else
                {
                    ViewBag.Message = "Credit Card Fail to create.";
                }
                //returning the employee list to view  
                return CreditCardInfo;
            }

        }

        public async Task<ActionResult> Details(long? Id)
        {
            // Initialization.  
            CreditCards model = new CreditCards();

            if (Id > 0)
            {
                // Get Result  
                model = await LoadDetail(Id);
            }

            return View(model);
        }

        public async Task<CreditCards> LoadDetail(long? CreditCardNo)
        {
            CreditCards CreditCardInfo = new CreditCards();

            using (var client = new HttpClient())
            {
                //Passing service base url  
                client.BaseAddress = new Uri(Baseurl);

                client.DefaultRequestHeaders.Clear();
                //Define request data format  
                client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                //Sending request to find web api REST service resource GetAllCreditCards using HttpClient  
                HttpResponseMessage Res = await client.GetAsync(string.Format("{0}{1}", "api/GetCreditCardDetail?CreditCardNo=", CreditCardNo));
                
                //Checking the response is successful or not which is sent using HttpClient  
                if (Res.IsSuccessStatusCode)
                {
                    //Storing the response details recieved from web api   
                    var EmpResponse = Res.Content.ReadAsStringAsync().Result;

                    //Deserializing the response recieved from web api and storing into the Credicard list  
                    CreditCardInfo = JsonConvert.DeserializeObject<CreditCards>(EmpResponse);

                }
                //returning the employee list to view  
                return CreditCardInfo;
            }

        }
    }
}
