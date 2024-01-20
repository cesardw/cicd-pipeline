const express = require('express')

const app = express()


app.get('/', (req, res) => {
    res.json({
        status: 200,
        message: "DevOps en proceso, sale o sale 2.0"
    })
})

app.listen(8080, () => {
    console.log('server running on port 8080')
})