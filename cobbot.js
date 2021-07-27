var Discord = require('discord.io');
var logger = require('winston');
var auth = require('./auth.json');
var fs = require('fs');
const { exec } = require('child_process')
// Configure logger settings
logger.remove(logger.transports.Console);
logger.add(new logger.transports.Console, {
    colorize: true
});
logger.level = 'debug';
// Initialize Discord Bot
var bot = new Discord.Client({
    token: auth.token,
    autorun: true
});
bot.on('ready', function () {
    logger.info('Connected');
    logger.info('Logged in as: ');
    logger.info(bot.username + ' - (' + bot.id + ')');
});
// Automatically reconnect if the bot disconnects due to inactivity
bot.on('disconnect', function (erMsg, code) {
    console.log('----- Bot disconnected from Discord with code', code, 'for reason:', erMsg, '-----');
    bot.connect();
});
bot.on('message', function (user, userID, channelID, message) {
    // console.log(process.env)
    // Our bot needs to know if it will execute a command
    // It will listen for messages that will start with `!`
    if (message.substring(0, 1) == '!') {
        //extended space for multi word command until replacment figured out
        var args = message.substring(1);
        var cmd = args;
        var cobolresult = null;
        var commandname = args.split(' ')[0];
        fs.writeFile('Cobbotlog.txt', cmd, function (err) {
            if (err) console.log('error', -err);
            exec('./cobbot', {
                // cwd: '/Cobbot/',
                env: { PATH: 'C:\\cygwin\\bin\\bash.exe' },
                shell: 'C:\\cygwin\\bin\\bash.exe'
            },
                function (err) {
                    if (err) console.log('error', err);
                    fs.readFile('cobbotreturn.txt', 'utf8', function (err, data) {
                        if (err) console.log('error', err);

                        cobolresult = data;
                        console.log(cobolresult)
                        switch (commandname) {

                            case 'film':

                                bot.sendMessage({
                                    to: channelID,
                                    message: cobolresult

                                });
                                break;

                            case 'roll':

                                bot.sendMessage({
                                    to: channelID,
                                    message: cobolresult

                                });
                                console.log(cobolresult)
                                break;

                            case 'show':

                                bot.sendMessage({
                                    to: channelID,
                                    message: cobolresult

                                });
                                console.log(cobolresult)
                                break;
                            case 'want':

                                bot.sendMessage({
                                    to: channelID,
                                    message: cobolresult

                                });
                                console.log(cobolresult)
                                break;
                            case 'rand':

                                bot.sendMessage({
                                    to: channelID,
                                    message: cobolresult

                                });
                                console.log(cobolresult)
                                break;
                            case 'sugg':

                                bot.sendMessage({
                                    to: channelID,
                                    message: cobolresult

                                });
                                console.log(cobolresult)
                                break;
                            case 'what':

                                bot.sendMessage({
                                    to: channelID,
                                    message: cobolresult

                                });
                                console.log(cobolresult)
                                break;
                            case 'jbob':

                                bot.sendMessage({
                                    to: channelID,
                                    message: cobolresult

                                });
                                console.log(cobolresult)
                                break;
                        }
                    });
                });

        });

    }
    if (message.substring(0, 1) == '$') {
        var args2 = message.substring(1);
        var commandname2 = args2.split(' ')[0];
        // var timestamp = args2.split(' ')[1];
        console.log(commandname2)
        switch (commandname2) {

            case 'pause':
            case 'play':
                exec(`./autohotkey mpcplay.ahk`, {
                    // cwd: '/Cobbot/',
                    env: { PATH: 'C:\\cygwin\\bin\\bash.exe' },
                    shell: 'C:\\cygwin\\bin\\bash.exe'
                },
                    function (err) {
                        if (err) console.log('error', err);
                    })
                break;

            case 'goto':
                var timestamp = args2.split(' ')[1];
                exec(`./autohotkey mpcgoto.ahk ${timestamp}`, {
                    // cwd: '/Cobbot/',
                    env: { PATH: 'C:\\cygwin\\bin\\bash.exe' },
                    shell: 'C:\\cygwin\\bin\\bash.exe'
                },
                    function (err) {
                        if (err) console.log('error', err);
                    })
                break;
            case 'fs':
            case 'full screen':
                var timestamp = args2.split(' ')[1];
                exec(`./autohotkey mpcfullscreen.ahk`, {
                    // cwd: '/Cobbot/',
                    env: { PATH: 'C:\\cygwin\\bin\\bash.exe' },
                    shell: 'C:\\cygwin\\bin\\bash.exe'
                },
                    function (err) {
                        if (err) console.log('error', err);
                    })
                break;
            case 'volup':
                var timestamp = args2.split(' ')[1];
                exec(`./autohotkey mpcvolup.ahk`, {
                    // cwd: '/Cobbot/',
                    env: { PATH: 'C:\\cygwin\\bin\\bash.exe' },
                    shell: 'C:\\cygwin\\bin\\bash.exe'
                },
                    function (err) {
                        if (err) console.log('error', err);
                    })
                break;
            case 'voldown':
                var timestamp = args2.split(' ')[1];
                exec(`./autohotkey mpcvoldown.ahk`, {
                    // cwd: '/Cobbot/',
                    env: { PATH: 'C:\\cygwin\\bin\\bash.exe' },
                    shell: 'C:\\cygwin\\bin\\bash.exe'
                },
                    function (err) {
                        if (err) console.log('error', err);
                    })
                break;
            case 'sub':
                var timestamp = args2.split(' ')[1];
                exec(`./autohotkey mpcsubtoggle.ahk`, {
                    // cwd: '/Cobbot/',
                    env: { PATH: 'C:\\cygwin\\bin\\bash.exe' },
                    shell: 'C:\\cygwin\\bin\\bash.exe'
                },
                    function (err) {
                        if (err) console.log('error', err);
                    })
                break;
            case 'subchange':
                var timestamp = args2.split(' ')[1];
                exec(`./autohotkey mpcsubchange.ahk`, {
                    // cwd: '/Cobbot/',
                    env: { PATH: 'C:\\cygwin\\bin\\bash.exe' },
                    shell: 'C:\\cygwin\\bin\\bash.exe'
                },
                    function (err) {
                        if (err) console.log('error', err);
                    })
                break;
            case 'audiochange':
                var timestamp = args2.split(' ')[1];
                exec(`./autohotkey mpcaudiochange.ahk`, {
                    // cwd: '/Cobbot/',
                    env: { PATH: 'C:\\cygwin\\bin\\bash.exe' },
                    shell: 'C:\\cygwin\\bin\\bash.exe'
                },
                    function (err) {
                        if (err) console.log('error', err);
                    })
                break;
        }
    }
});