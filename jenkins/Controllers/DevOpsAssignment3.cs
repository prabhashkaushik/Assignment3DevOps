using Microsoft.AspNetCore.Mvc;

namespace DevOpsAssignment3.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class DevOpsAssignment3 : Controller
    {
            
            [HttpGet]
            public IActionResult HelloWorld()
            {
                return Ok("Hello, world!");
            }
    }
}
