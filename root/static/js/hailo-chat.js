function Chat () {
    this.update = updateChat;
    this.send = sendChat;
    this.getState = getStateOfChat;
}

function getStateOfChat(){
    if(!instanse){
        instanse = true;
        $.ajax({
            type: "POST",
            url: "process.php",
            data: {
                'function': 'getState',
                'file': file
            },
            dataType: "json",
            success: function(data){
                state = data.state;
                instanse = false;
            },
        });
    }
}


//Updates the chat
function updateChat(){
    if(!instanse){
        instanse = true;
        $.ajax({
            type: "POST",
            url: "process.php",
            data: {
                 'function': 'update',
                  'state': state,
                  'file': file
            },
            dataType: "json",
            success: function(data){
                if(data.text){
                    for (var i = 0; i < data.text.length; i++) {
                        $('#chat-area').append($("<p>"+ data.text[i] +"</p>"));
                    }
                }
                document.getElementById('chat-area').scrollTop = document.getElementById('chat-area').scrollHeight;
                instanse = false;
                state = data.state;
            },
        });
    }
    else {
        setTimeout(updateChat, 1500);
    }
}

function sendChat(message, nickname)
{
    updateChat();
    $.ajax({
            type: "POST",
            url: "process.php",
            data: {
                'function': 'send',
                'message': message,
                'nickname': nickname,
                'file': file
            },
            dataType: "json",
            success: function(data){
                updateChat();
            },
     });
}
