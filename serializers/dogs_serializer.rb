class DogsSerializer < ActiveModel::Serializer
  attributes :dogs


  has_many :dog, serializer: Dogs::DogSerializer



  private

  def type_check(name, types)
    raise "Field type is invalid. #{name}" unless types.include?(object.send(name).class)
  end
end
