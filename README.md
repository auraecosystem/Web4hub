# Web4hub

```god
package main

import "github.com/pusher/pusher-http-go/v5"

func main(){
  pusherClient := pusher.Client{
    AppID: "2184708",
    Key: "5551079ec0aee047975f",
    Secret: "60e1fbbd5d59f771e929",
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
