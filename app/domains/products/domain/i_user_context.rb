class Products::Domain::IUserContext
  def is_in_role(role)
    raise NotImplementedError
  end

  def currency
    raise NotImplementedError
  end
end
