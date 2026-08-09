import {
  Pusher,
  PusherMember,
  PusherChannel,
  PusherEvent,
} from '@pusher/pusher-websocket-react-native';

const pusher = Pusher.getInstance();

  await pusher.init({
    apiKey: "5551079ec0aee047975f",
    cluster: "mt1"
  });
    
  await pusher.connect();
  await pusher.subscribe({
    channelName: "my-channel", 
    onEvent: (event: PusherEvent) => {
      console.log(`Event received: ${event}`);
    }
  });
