using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CreditCard.Repositories
{
    public interface IGenericRepository<T> where T : class
    {
        IEnumerable<T> GetAll();
        T GetById(int id);
        T Get(Func<T, Boolean> where);
        void Insert(T obj);
        void Update(T obj);
        void Delete(int id);
        void Save();
    }
}