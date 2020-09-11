class Cats::OwnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :address


  def id
    type_check(:id, [Integer])
    object.id
  end

  def name
    type_check(:name, [String])
    object.name
  end

  def address
    type_check(:address, [String])
    object.address
  end

  private

  def type_check(name, types)
    raise "Field type is invalid. #{name}" unless types.include?(object.send(name).class)
  end
end
