chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'hubot-cah', ->
	beforeEach ->
		@robot =
			respond: sinon.spy()
			hear: sinon.spy()

		require('../src/cah')(@robot)

	it 'responds to "black card"', ->
		expect(@robot.respond).to.have.been.calledWith sinon.match( (val) ->
			val.test /black card/
		)

	it 'responds to "white card"', ->
		expect(@robot.respond).to.have.been.calledWith sinon.match( (val) ->
			val.test /white card/
		)

	it 'responds to "white card 2"', ->
		expect(@robot.respond).to.have.been.calledWith sinon.match( (val) ->
			val.test /white card 2/
		)

	it 'does NOT responds to "blackcard"', ->
		expect(@robot.respond).to.not.have.been.calledWith sinon.match( (val) ->
			val.test /blackcard/
		)

	it 'does NOT responds to "whitecard"', ->
		expect(@robot.respond).to.not.have.been.calledWith sinon.match( (val) ->
			val.test /whitecard/
		)
