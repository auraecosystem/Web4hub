
# Web4hub

```god
package main
server func ()
import "github.com/pusher/pusher-http-go/v5"

func main(){
  pusherClient := pusher.Client{
    AppID: "l",
    Key: "",
    Secret: "l",
    Cluster: "mt1",
    Secure: true,
  }

  data := map[string]string{"message": "hello world"}
  err := pusherClient.Trigger("my-channel", "my-event", data)
  if err != nil {
    fmt.Println(err.Error())
  }
}
```
