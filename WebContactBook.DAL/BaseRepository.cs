using System;
using System.Data;
using System.Data.SqlClient;

namespace WebContactBook.DAL
{
    public class BaseRepository
    {
        protected IDbConnection connection;
        public BaseRepository()
        {
            string connectionString = @"Data Source=DESKTOP-SHFNUQJ\SQLEXPRESS;Initial Catalog=WebContactBook;Integrated Security=True";
            connection = new SqlConnection(connectionString);
        }
    }
}
