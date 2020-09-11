class Cats::CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :owner


  has_one :owner, serializer: Cats::OwnerSerializer


  def id
    required_check(:id)

    type_check(:id, [Integer])
    object.id
  end

  def name
    required_check(:name)

    type_check(:name, [String])
    object.name
  end

  private

  def required_check(name)
    raise "Required field is nil. #{name}" if object.send(name).nil?
  end

  def type_check(name, types)
    raise "Field type is invalid. #{name}" unless types.include?(object.send(name).class)
  end
end
