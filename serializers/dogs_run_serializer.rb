class DogsRunSerializer < ActiveModel::Serializer
  attributes :result


  def result
    type_check(:result, [TrueClass, FalseClass])
    object.result
  end

  private

  def type_check(name, types)
    raise "Field type is invalid. #{name}" unless types.include?(object.send(name).class)
  end
end
