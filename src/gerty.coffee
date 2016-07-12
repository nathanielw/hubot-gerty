# Description
#   A hubot script that responds with quotes from GERTY, the AI in Moon
#
# Author:
#   Nathaniel Watson <nathaniel@nwatson.nz>

praise = [
	'You\'re welcome, {user}',
	'Okay, {user}',
	'I understand, {user}. I hope life on Earth is everything you remember it to be.'
]

abuse = [
	'{user}, you may have suffered from brain damage in the crash. This would explain your slight memory loss and logic impairment.',
	'I\'m here to keep you safe, {user}. I want to help you.',
	'{user}, is everything OK?',
	'{user}, it might help you to talk about it.',
	'I can\'t let you go outside, {user}.',
	'{user}, I can only account for what occurs on the base.'
]

general = [
	'{user}, is everything OK?',
	'Is something wrong?',
	'Good morning, {user}.',
	'Would you like some hot sauce on your beans?',
	'Of course, {user}, how can I help?'
]

formatQuote = (quote, username = 'Sam') ->
	return quote.replace '{user}', username

module.exports = (robot) ->
	praiseRegex = new RegExp "^(?:(thank(s| you)|th(\\w*?)x)|((that'?s )?(cool|nice|sweet))) #{robot.name}", "i"
	robot.hear praiseRegex, (res) ->
		quote = formatQuote res.random(praise), res.message.user.name
		res.send quote

	abuseRegex = new RegExp "^((fuck (off|you|u)?)|(shut.?up)|(go away)) #{robot.name}", "i"
	robot.hear abuseRegex, (res) ->
		quote = formatQuote res.random(abuse), res.message.user.name
		res.send quote

	generalRegex = new RegExp "^(hey|(pl.*?(z|s)e?))?\\s?#{robot.name}(!|\\?)*$", "i"
	robot.hear generalRegex, (res) ->
		quote = formatQuote res.random(general), res.message.user.name
		res.send quote
