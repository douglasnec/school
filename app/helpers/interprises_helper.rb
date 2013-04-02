module InterprisesHelper
  def find_rotations(id)
    rotation = Rotation.find(id)
    rotation.description
  end
end
