import OSC
import sys

c = OSC.OSCClient()
c.connect(('192.168.2.73', 8675))   # localhost, port 57120
oscmsg = OSC.OSCMessage()
oscmsg.setAddress("/object")
oscmsg.append(str(sys.argv[1]))
print "Sent message: %s" % (sys.argv[1]);
c.send(oscmsg)