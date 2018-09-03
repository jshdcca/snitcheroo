((count = 2400))                            # Maximum number to try.
while [[ $count -ne 0 ]] ; do
    ping -c 1 192.168.7.46                      # Try once.
    rc=$?
    if [[ $rc -eq 0 ]] ; then
        ((count = 1))                      # If okay, flag to exit loop.
    fi
    ((count = count - 1))                  # So we don't go forever.
done

if [[ $rc -eq 0 ]] ; then                  # Make final determination.
  #DO STUFF HERE
  #EX:
  #php telegram.php ABC XYZ
else
  #DO STUFF HERE
  #EX:
  #php telegram.php XYZ ABC
fi
