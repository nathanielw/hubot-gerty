Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/gerty.coffee')

class MockResponse extends Helper.Response
	random: (items) ->
		"response"

describe 'gerty', ->
	beforeEach ->
		@room = helper.createRoom({'response': MockResponse})

	afterEach ->
		@room.destroy()

	it 'hears abuse', ->
		@room.user.say('alice', 'shut up hubot').then =>
			expect(@room.messages[1]).to.eql ['hubot', 'response']

	it 'hears praise', ->
		@room.user.say('alice', 'thank you hubot').then =>
			expect(@room.messages[1]).to.eql ['hubot', 'response']

	it 'hears general mentions', ->
		@room.user.say('alice', 'hey hubot').then =>
			expect(@room.messages[1]).to.eql ['hubot', 'response']
