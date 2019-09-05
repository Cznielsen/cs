exports.start = function() {

    var mqtt = require('mqtt');
    var config = require('./config.json');
    var thngId = config.thngId;
    var thngUrl='/thngs/'+thngId;
    var thngApiKey=config.thngApiKey;

    var interval;
    var resources = require('./../resources/model');

    console.log('Using Thng #'+thngId+' with API Key: '+ thngApiKey);

    var client = mqtt.connect("mqtts://mqtt.evrythng.com:8883", {
        username: 'authorization',
        password: config.operatorApiKey
    });

    client.on('connect', function () {
        client.subscribe(thngUrl+'/properties/');
        client.subscribe(thngUrl+'/actions/all');
        updateProperty('livenow', true);
        if (!interval) interval = setInterval(updateProperties, 20000);
    });

    client.on('message', function (topic, message) {
        var resources = topic.split('/');
        if (resources[1] && resources[1] === "thngs"){ // #B
            if (resources[2] && resources[2] === thngId){  // #C
                if (resources[3] && resources[3] === "properties"){ //#D
                    var property = JSON.parse(message);
                    console.log('Property was updated: '+property[0].key+'='+property[0].value);
                } else if (resources[3] && resources[3] === "actions"){ //#E
                    var action = JSON.parse(message);
                    handleAction(action);
                }
            }
        }
    });


    function updateProperties () {
        updateProperty ('temperature',resources.pi.sensors.temperature.value);
        updateProperty ('humidity',resources.pi.sensors.humidity.value);
        updateProperty ('pir',resources.pi.sensors.pir.value);
        updateProperty ('led1',resources.pi.actuators.leds["1"].value);
        updateProperty ('led2',resources.pi.actuators.leds["2"].value);
        updateProperty ('led3',resources.pi.actuators.leds["3"].value);
    }

    function handleAction(action) {
        switch(action.type) { // #F
            case '_led1':
                console.log('_led1');
                resources.pi.actuators.leds["1"].value = !resources.pi.actuators.leds["1"].value;
                break;
            case '_led2':
                console.log('_led2');
                resources.pi.actuators.leds["2"].value = !resources.pi.actuators.leds["2"].value;
                break;
            case '_led3':
                console.log('_led3');
                resources.pi.actuators.leds["3"].value = !resources.pi.actuators.leds["3"].value;
                break;
            default:
                console.log('ACTION: Unknown action type: '+action.type);
                break;
        }
    }

    function updateProperty (property,value) {
        client.publish(thngUrl+'/properties/'+property, '[{"value": '+value+'}]');
    }

    process.on('SIGINT', function() { // #K
        clearInterval(interval);
        updateProperty ('livenow', false);
        client.end();
        process.exit();
    });
};

