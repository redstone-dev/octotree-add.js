def pullable_by?(user)
  science "repository.pullable-by" do |experiment|
    experiment.context :repo => id, :user => user.id
    experiment.use { is_collaborator?(user) }
    experiment.try { has_access?(user) }
  end
end

pullable_by?("redstone2010")
def add(thing)
  science "repository.add" do |experiment|
    experiment.context :repo => id, :thing => thing.id
    experiment.use { is_app?(thing) }
    experiment.try { has_id?(thing) }
  end
end
