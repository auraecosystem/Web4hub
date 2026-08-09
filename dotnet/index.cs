// Note: this example is using https://dotnet.microsoft.com/apps/aspnet/mvc
using PusherServer;
using System.Web.Mvc;
using System.Net;

public class HelloWorldController : Controller {
  [HttpPost]
  public async Task<ActionResult> HelloWorld() {
    var options = new PusherOptions
    {
      Cluster = "mt1",
      Encrypted = true
    };

    var pusher = new Pusher(
      "2184708",
      "5551079ec0aee047975f",
      "60e1fbbd5d59f771e929",
      options);

    var result = await pusher.TriggerAsync(
      "web4hub",
      "my-event",
      new { message = "hello world" } );

    return new HttpStatusCodeResult((int)HttpStatusCode.OK);
  }
}
