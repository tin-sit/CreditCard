using CreditCard.Connection;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace CreditCard.Repositories
{
    public class GenericRepository<T> : IGenericRepository<T> where T : class
    {
        private CreditCardDbContext _context = null;
        private DbSet<T> table = null;
        public GenericRepository()
        {
            this._context = new CreditCardDbContext();
            table = _context.Set<T>();
        }
        public GenericRepository(CreditCardDbContext _context)
        {
            this._context = _context;
            table = _context.Set<T>();
        }
        public IEnumerable<T> GetAll()
        {
            return table.ToList();

        }
        public T Get(Func<T, Boolean> where)
        {
            return table.Where(where).FirstOrDefault();
        }

        public T GetById(int id)
        {
            return table.Find(id);
        }
        public void Insert(T obj)
        {
            table.Add(obj);
        }
        public void Update(T obj)
        {
            table.Attach(obj);
            _context.Entry(obj).State = EntityState.Modified;
        }
        public void Delete(int id)
        {
            T existing = table.Find(id);
            table.Remove(existing);
        }
        public void Save()
        {
            _context.SaveChanges();
        }
    }
}