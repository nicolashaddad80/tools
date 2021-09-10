adb tcpip 6000 
sleep 3s
socat tcp-listen:6001,bind=10.214.195.164,reuseaddr,fork tcp:localhost:6001&socat tcp-listen:6001,bind=10.214.195.164,reuseaddr,fork tcp:localhost:6001&
adb forward tcp:6001 tcp:6000
echo "board is now connected to remote socket number: 6001" 
