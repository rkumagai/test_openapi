class CatsId::OwnerSerializer < ActiveModel::Serializer
  attributes :id


  def id
    type_check(:id, [Integer])
    object.id
  end

  private

  def type_check(name, types)
    raise "Field type is invalid. #{name}" unless types.include?(object.send(name).class)
  end
end
