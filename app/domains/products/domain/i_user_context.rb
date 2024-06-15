class Products::Domain::IUserContext
  def is_in_role(role)
    raise NotImplementedError
  end
end
