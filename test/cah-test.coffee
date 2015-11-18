chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'cah', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/cah')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/black card/)
    expect(@robot.respond).to.have.been.calledWith(/white card/)
    expect(@robot.respond).to.have.been.calledWith(/white card 2/)
