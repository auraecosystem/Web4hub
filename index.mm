#import <Pusher/Pusher.h>

self.pusher = [PTPusher pusherWithKey:@"5551079ec0aee047975f" delegate:self encrypted:YES cluster:@"mt1"];

// subscribe to channel and bind to event
PTPusherChannel *channel = [self.pusher subscribeToChannelNamed:@"my-channel"];

[channel bindToEventNamed:@"my-event" handleWithBlock:^(PTPusherEvent *channelEvent) {
    // channelEvent.data is a NSDictianary of the JSON object received
    NSString *message = [channelEvent.data objectForKey:@"message"];
    NSLog(@"message received: %@", message);
}];

[self.pusher connect];
