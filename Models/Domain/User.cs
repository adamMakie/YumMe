using Microsoft.AspNetCore.Identity;

namespace YumMe.Models.Domain;

public class User : IdentityUser
{
    public string Id { get; set; }

    public string Name { get; set; }

    public string Email { get; set; }

    public string PhoneNumber { get; set; }


}
