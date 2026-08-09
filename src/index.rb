require 'pusher'

pusher = Pusher::Client.new(
  app_id: '2184708',
  key: '5551079ec0aee047975f',
  secret: '60e1fbbd5d59f771e929',
  cluster: 'mt1',
  encrypted: true
)

pusher.trigger('my-channel', 'my-event', {
  message: 'hello world'
})
