class Person < ActiveRecord::Base
  has_many :relationships,
    :finder_sql => proc { "select * from relationships r where (r.from_id = #{id}) or (r.to_id = #{id})" }
  has_many :relations,
    :finder_sql => proc { "select * from relations inner join relationships r \
      on (relations.id = r.relation_id) and ((r.from_id = #{id}) or (r.to_id = #{id}))" }
end
