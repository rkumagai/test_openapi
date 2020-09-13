class CatsSerializer < ActiveModel::Serializer
  attributes :cats


  has_many :cat, serializer: Cats::CatSerializer



  private

  def type_check(name, types)
    raise "Field type is invalid. #{name}" unless types.include?(object.send(name).class)
  end
end
