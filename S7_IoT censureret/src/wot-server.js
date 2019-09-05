const fs = require('fs');
const request = require('request');
const config = require('./cloud/config.json');
const path = require('path');

const httpServer = require('./servers/http'),
    resources = require('./resources/model'),
    ledsPlugin1 = require('./plugins/internal/ledsPlugin1'),
    ledsPlugin2 = require('./plugins/internal/ledsPlugin2'),
    ledsPlugin3 = require('./plugins/internal/ledsPlugin3'),
    pirPlugin = require('./plugins/internal/pirPlugin'),
    dhtPlugin = require('./plugins/internal/DHT22SensorPlugin'),
    mqtt = require('./cloud/mqtt');

const server = httpServer.listen(resources.pi.port, function () {
    console.log('HTTP server started...');
});

pirPlugin.start({'simulate': false, 'frequency': 1000});
dhtPlugin.start({'simulate': false, 'frequency': 1000});
ledsPlugin1.start({'simulate': false, 'frequency': 1000});
ledsPlugin2.start({'simulate': false, 'frequency': 1000});
ledsPlugin3.start({'simulate': false, 'frequency': 1000});

if (!fs.existsSync(path.resolve('src/cloud/device.json'))) {
    const headers = {
        'Content-Type': 'application/json',
        'Authorization': config.operatorApiKey,

    };
    const createThing = {
        "name": "Rpi",
        "product": config.productId,
        "description": "Raspberry Pi",
        "tags": ["Rpi", "IoT"]
    };

    const options = {
        url: 'https://api.evrythng.com/thngs?project=' + config.projectId,
        method: 'POST',
        headers: headers,
        json: createThing
    };

    request(options, function (error, response, body) {
        config.thngId = body.id;
        mqtt.start();
    })
}
else {
    mqtt.start();
}
