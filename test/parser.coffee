assert = require('assert')
fs = require('fs')

parser = require('../dist/main')

describe 'parser', ->
  it 'should exist', ->
    assert(parser)

  it 'should parse some stuff', ->
    assert parser.parse("%yolo")

  describe 'samples', ->
    sampleDir = "test/samples/haml"

    fs.readdirSync(sampleDir).forEach (file) ->
      data = fs.readFileSync "#{sampleDir}/#{file}", "UTF-8"
      ast = null

      it "should parse #{file}", ->
        ast = parser.parse(data)
        assert ast
