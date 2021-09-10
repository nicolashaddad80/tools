while : 
	do
		while ! adb shell pidof com.renault.car.boschradar
			do
				echo "waiting process to start"
			done
		adb logcat -v color --pid $(adb shell pidof com.renault.car.boschradar)
	done
	