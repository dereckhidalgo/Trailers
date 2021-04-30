using ApiTrailers.Contexto;
using ApiTrailers.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiTrailers.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PeliculasController : ControllerBase
    {
        private readonly AppDbContext context;
        public PeliculasController(AppDbContext context)
        {
            this.context = context;
        }
        // GET: api/<PeliculasController>
        [HttpGet]
        public ActionResult Get()
        {
            try
            {
                return  Ok(context.Peliculas.ToList());
            }
            catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // GET api/<PeliculasController>/5
        [HttpGet("{id}",Name ="GetGestor")]
        public ActionResult Get(int id)
        {
            try
            {
                var gestor = context.Peliculas.FirstOrDefault(g => g.IdPelicula == id);
                return Ok(gestor); 
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // POST api/<PeliculasController>
        [HttpPost]
        public ActionResult Post([FromBody] Pelicula gestor)
        {
            try
            {
                context.Peliculas.Add(gestor);
                context.SaveChanges();
                return CreatedAtRoute("GetGestor", new { id = gestor.IdPelicula }, gestor);
            }
            catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // PUT api/<PeliculasController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] Pelicula gestor)
        {
            try
            {
                if(gestor.IdPelicula == id)
                {
                    context.Entry(gestor).State = EntityState.Modified;
                    context.SaveChanges();
                    return CreatedAtRoute("GetGestor", new { id = gestor.IdPelicula }, gestor);
                }
                else
                {
                    return BadRequest();
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        // DELETE api/<PeliculasController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            try
            {
                var gestor = context.Peliculas.FirstOrDefault(g => g.IdPelicula == id);
                if(gestor != null)
                {
                    context.Peliculas.Remove(gestor);
                    context.SaveChanges();
                    return Ok(id);
                }
                else
                {
                    return BadRequest();
                }
            }catch(Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }   
    }
}
