class CollectionSerializer < ActiveModel::Serializer
  attributes :id, :scale_name, :is_scale, :user_id, :created_at, :updated_at
end
