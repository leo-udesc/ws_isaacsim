import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/leo/ws_isaacsim/unitree/install/Unitree_G1_Description'
