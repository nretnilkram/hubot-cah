# hubot-cah

A hubot script that plays a limited version of cards against humanity

See [`src/cah.coffee`](src/cah.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install https://github.com/nretnilkram/hubot-cah.git --save`

Then add **hubot-cah** to your `external-scripts.json`:

```json
["hubot-cah"]
```

## Configuration
Set environment variable `HUBOT_CAH_HEAR` to true if you want hubot to listen for commands instead of responding to them

## Sample Interaction

```
user1>> hubot black card
hubot>> I like _ with my icecream
```
