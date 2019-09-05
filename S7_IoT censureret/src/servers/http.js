let express = require('express');
let cors = require('cors');
let bodyParser = require('body-parser');
let sensorRoutes = require('./../routes/sensors');
let actuatorRoutes = require('./../routes/actuators');
let converter = require('./../middleware/converter');
let app = express();


app.get('/pi', function (req, res) {
    res.send('This is the WoT-Pi!')
});

app.use(bodyParser.json());
app.use(cors());
app.use('/pi/sensors', sensorRoutes);
app.use('/pi/actuators', actuatorRoutes);
app.use(express.static('src/public'));
app.use(converter());

module.exports = app;
