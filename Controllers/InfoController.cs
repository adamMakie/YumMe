using Microsoft.AspNetCore.Mvc;

namespace YumMe.Controllers;
public class InfoController : Controller
{
    public IActionResult Index()
    {
        return View();
    }
}
