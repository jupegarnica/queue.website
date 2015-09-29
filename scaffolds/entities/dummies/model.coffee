# The Model

# 

# YAML Loading
mongoose = require('mongoose')
config = require('yaml-config')
settings = config.readConfig('config/app.yaml')

# Mongoose Config
Schema = mongoose.Schema
db = mongoose.createConnection(settings.mongodb_uri)

# Schema Definition
DummiesSchema = new Schema({
  foo: String,
  bar: String,
  baz: String
})

# Model Definition
module.exports = db.model('Dummy', DummiesSchema)
