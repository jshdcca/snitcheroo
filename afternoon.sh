((count = 2400))                            # Maximum number to try.
while [[ $count -ne 0 ]] ; do
    ping -c 1 192.168.7.46                      # Try once.
    rc=$?
    if [[ $rc -eq 1 ]] ; then
        ((count = 1))                      # If okay, flag to exit loop.
    fi
    ((count = count - 1))                  # So we don't go forever.
    sleep 5;
done

if [[ $rc -eq 0 ]] ; then                  # Make final determination.
  #echo "Josh is still here"
else
  #echo "Umuwi na ako"
fi
