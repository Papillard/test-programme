Read this [joke](http://theoatmeal.com/comics/email_address) and implement a function `mail_joke` which parses an input email and returns a custom message depending on your mail provider. For instance:

```ruby
mail_joke("boris@lewagon.org")
=> "Well done boris, you're skilled and capable"
mail_joke("jean-louis.alarue@live.com")
=> "Hi jean-louis alarue, tu m'as l'air à la rue..."
```

## Specs
of course you can invent your own jokes (the ones from the post are not very funny). Your program should:
* Detect first name, last name and providers respecting this syntax `first_name.last_name@provider.com``
* If the mail does not respect this structure, your program will just consider the first part of the mail (before the `@` character) as the user's global name.
* if the mail does not look like a mail, as `not_a@mail.at@all.com`, the function should raise an `ArgumentError`.

## Tips
* Your jokes by provider will be given once and for all. They will not change. What kind of variable should you use to store them ?
* Which data structure is the more adequate to model these jokes ? a String ? an Array ? a Hash ?

