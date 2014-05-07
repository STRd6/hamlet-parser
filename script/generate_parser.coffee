#!/usr/bin/env coffee

fs = require('fs')
path = require('path')

parserSource = require('../parser').parser.generate()

fs.writeFile path.join(__dirname, "..", "dist", "parser.js"), parserSource, ->
