read -p "Receipient: " receipient
read -p "Subject: " subject
read -p "Body: " body

`mail -s "$subject" -F "$receipient" <<< $body`