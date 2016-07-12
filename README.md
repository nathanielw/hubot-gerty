# hubot-gerty

A hubot script that responds with quotes from GERTY, the AI in Moon.

Made as a bit of fun for a Slack where the bot is named after GERTY.

Responds to three basic prompts: praise (e.g. _thanks hubot_), abuse (e.g. _go away hubot_) and general acknowledgements (e.g. _hey hubot_, or even just _hubot_). These triggers have a fairly broad scope, so expect collisions if you're using this.

## Installation

In hubot project repo, run:

`npm install hubot-gerty --save`

Then add **hubot-gerty** to your `external-scripts.json`:

```json
[
  "hubot-gerty"
]
```

## Sample Interaction

```
Sam>> go away hubot
hubot>> I'm here to keep you safe, Sam. I want to help you.
```

```
Sam>> thx hubot
hubot>> You're welcome, Sam.
```

## NPM Module

https://www.npmjs.com/package/hubot-gerty
