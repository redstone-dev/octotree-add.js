def pullable_by?(user)
  science "repository.pullable-by" do |experiment|
    experiment.context :repo => id, :user => user.id
    experiment.use { is_collaborator?(user) }
    experiment.try { has_access?(user) }
  end
end

pullable_by?("redstone2010")
