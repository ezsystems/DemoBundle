# Premium content

This feature displays content marked as Premium using a special teaser and informations about the status. It is
an example of what could be used to offer a paywall.

## Implementation
Premium content is identified belonging to section Premium (ID: 7). Subscribers have the Subscriber role (ID: 6).

A standard policy check can't be used here, as it would prevent the content from  being returned in searches and lists.
Instead, Anonymous user can read this content, but a custom ViewProvider is used to return a special premium_teaser
template when a premium content is viewed by a non-subscriber.
