﻿using Microsoft.AspNetCore.Mvc;

namespace YumMe.Controllers;
public class ProfileController : Controller
{
    public IActionResult Index()
    {
        return View();
    }
}
