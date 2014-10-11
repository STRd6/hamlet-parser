assert = require('assert')
fs = require('fs')

parser = require('../dist/main')

parseDirectory = (directory, mode) ->
  fs.readdirSync(directory).forEach (file) ->
    data = fs.readFileSync "#{directory}/#{file}", "UTF-8"
    ast = null

    it "should parse #{file}", ->
      ast = parser.parse(data, mode)
      assert ast

describe 'parser', ->
  describe 'haml samples', ->
    parseDirectory "test/samples/haml", "haml"

  describe 'jade samples', ->
    parseDirectory "test/samples/jade", "jade"
