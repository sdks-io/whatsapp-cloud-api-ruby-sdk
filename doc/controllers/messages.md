# Messages

<!-- 
You can use this API to send text messages, media, and message templates to your customers. To send a message, create a **Message** object. Each message is identified by a unique ID. You can also mark an incoming message as read through the `/messages` endpoint. You can track message status with Webhooks by ID. 
-->
Use the **`/{{Phone-Number-ID}}/messages`** endpoint to send text messages, media (audio, documents, images, and video), and message templates to your customers. For more information relating to the messages you can send, see [Messages](#1f4f7644-cc97-40b5-b8e4-c19da268fff1).

Messages are identified by a unique ID. You can track message status in the Webhooks through its ID. You could also mark an incoming message as read through the **`/{{Phone-Number-ID}}/messages`** endpoint.

## Prerequisites

* [User Access Token](https://developers.facebook.com/docs/facebook-login/access-tokens#usertokens) with **`whatsapp_business_messaging`** permission
* `phone-number-id` for your registered WhatsApp account. See [Get Phone Number](#c72d9c17-554d-4ae1-8f9e-b28a94010b28).

```ruby
messages_controller = client.messages
```

## Class Name

`MessagesController`


# Send Message

Use this endpoint to send text messages, media, message templates to your customers.

```ruby
def send_message(phone_number_id,
                 body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `phone_number_id` | `String` | Template, Required | - |
| `body` | [`Message`](../../doc/models/message.md) | Body, Required | To send a message, you must first assemble a message object with the content you want to send. |

## Response Type

[`SendMessageResponse`](../../doc/models/send-message-response.md)

## Example Usage

```ruby
phone_number_id = 'Phone-Number-ID6'

body = Message.new(
  'whatsapp',
  '{{Recipient-Phone-Number}}',
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  Template.new(
    'hello_world',
    Language.new(
      'en_US',
      nil
    ),
    nil
  ),
  nil,
  MessageTypeEnum::TEMPLATE,
  nil
)

result = messages_controller.send_message(
  phone_number_id,
  body
)
```

## Example Response *(as JSON)*

```json
{
  "messaging_product": "whatsapp",
  "contacts": [
    {
      "input": "48XXXXXXXXX",
      "wa_id": "48XXXXXXXXX "
    }
  ],
  "messages": [
    {
      "id": "wamid.gBGGSFcCNEOPAgkO_KJ55r4w_ww"
    }
  ]
}
```

