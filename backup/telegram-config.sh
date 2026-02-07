#!/bin/bash

# Telegram Bot setup configuration script

# Enter your bot token here:
BOT_TOKEN="your_bot_token"

# Set the chat ID where messages will be sent:
CHAT_ID="your_chat_id"

# Example function to send a message
send_message() {
    curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendMessage \
        -d "chat_id=$CHAT_ID" \
        -d "text=$1"
}

# Example usage
send_message "Telegram bot setup complete!"