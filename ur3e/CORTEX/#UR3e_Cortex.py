#UR3e_Cortex.py
import numpy as np
import omni.isaac.core.utils.kinematics as kinematics_utils
import omni.isaac.core.utils.prims as prims_utils
from omni.isaac.core.robots import Robot
from omni.isaac.core.world import World

# Inicializa o mundo do Isaac Sim
world = World()

# Adiciona o robô UR3e à cena
ur3e = world.scene.add(Robot(prim_path="/ur3e", name="ur3e"))

# Adiciona um objeto à cena
object_prim = prims_utils.create_prim(
    "/World/object", prim_type="Sphere", position=np.array([0.5, 0, 0.2])
)

# Define a posição alvo para o UR3e
target_position = np.array([0.5, 0, 0.4])

# Calcula a cinemática inversa para o UR3e
joint_positions = kinematics_utils.inverse_kinematics(
    ur3e, target_position, end_effector_name="ee_link"
)

# Move o UR3e para a posição alvo
ur3e.set_joint_positions(joint_positions)

# Simula o robô
world.step(render=True)