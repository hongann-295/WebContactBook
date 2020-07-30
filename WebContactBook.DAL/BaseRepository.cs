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
            string connectionString = @"Data Source=desktop-b5sct1g\sqlexpress;Initial Catalog=WebContactBook;Integrated Security=True";
            connection = new SqlConnection(connectionString);
        }
    }
}
