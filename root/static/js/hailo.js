function Chat () {
    this.send = sendChat;
}

//send the message
function sendChat(message, nickname)
{       
    add_to_chat(nickname, message);

    $.ajax({
        type: "GET",
        url: "/chat/rest/reply",
        data: {  
            'nick': nickname,
            'text': message,
        },
        dataType: "json",
        success: function(data){
            if (data.nick && data.text) {
                add_to_chat(data.nick, data.text);
            }
        },
    });
}

function add_to_chat(nick, text) {
    $('#chat-area').append($("<p>" + "<span>" + nick + "</span>" + text +"</p>"));
    document.getElementById('chat-area').scrollTop = document.getElementById('chat-area').scrollHeight;
}
