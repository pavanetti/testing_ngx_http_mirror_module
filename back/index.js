const express = require("express")
const bodyParser = require("body-parser")
const morganBody = require("morgan-body")

const app = express()

app.use(bodyParser.json())
app.use(bodyParser.text())
morganBody(app)

app.use((_, res) => {
    res.status(204).end()
})

const server = app.listen(3000)