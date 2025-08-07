import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/leo/ws_isaacsim/ur5_isaac_sim/install/ur5_isaac_simulation'
