import bpy

# Define house dimensions
width = 10
height = 5
depth = 8

# Create cube mesh and object
bpy.ops.mesh.primitive_cube_add(size=2)
cube = bpy.context.object

# Resize cube to house dimensions
cube.scale = (width/2, depth/2, height/2)

# Move cube to ground level
cube.location = (0, 0, height/2)

# Create roof mesh and object
bpy.ops.mesh.primitive_cone_add(radius1=width/2, depth=depth)
roof = bpy.context.object

# Rotate roof 180 degrees and move it to the top of the house
roof.rotation_euler = (3.14159, 0, 0)
roof.location = (0, 0, height)

# Add materials to cube and roof
mat_cube = bpy.data.materials.new(name="CubeMaterial")
mat_cube.diffuse_color = (0.8, 0.8, 0.8)
cube.data.materials.append(mat_cube)

mat_roof = bpy.data.materials.new(name="RoofMaterial")
mat_roof.diffuse_color = (0.9, 0.1, 0.1)
roof.data.materials.append(mat_roof)
``
