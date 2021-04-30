using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ApiTrailers.Models
{
    public class Pelicula
    {
        [Key]
        public int IdPelicula { get; set; }
        public string Titulo { get; set; }
        public string Director { get; set; }
        public string Descripcion { get; set; }
        public string poster { get; set; }
        public string video { get; set; }
        public int puntuacion { get; set; }
    }
}
