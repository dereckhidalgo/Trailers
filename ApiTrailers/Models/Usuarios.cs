using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ApiTrailers.Models
{
    [Table("Usuarios")]
    public class Usuarios
    {   
        public string Nombre { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        [Key]
        public int IdUsuario { get; set; }
    }
}
  